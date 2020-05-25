%% SET PATHS

clearvars variables -except ft_default
restoredefaultpath; %% set a clean path
datainfo; % load the relevant directories
figures_dir = [];

%% ADD PATHS

% add your fieldtrip
addpath(fieldtrip_dir);
ft_defaults %% initialize FieldTrip defaults

% functions needed for analysis
addpath(fullfile(script_dir, 'general_functions'));
addpath(fullfile(script_dir, 'statistics_functions'));

%% SUBJECTS
% these are the subject names

subjects = {
        
             'sub-01'
             'sub-02'
%              'sub-03'
%              'sub-04'
%              'sub-05'
%              'sub-06'
%              'sub-07'
%              'sub-08'
%              'sub-09'
%              'sub-10'
%              'sub-11'
%              'sub-12'
%              'sub-13'
%              'sub-14'
%              'sub-15'
%              'sub-16'
%              'sub-17'
%              'sub-18'
%              'sub-19'
%              'sub-20'
                     
                     };  
                 
n_subjects = length(subjects);                 
                 
%% STATISTICS TIME-FREQUENCY REPRESENTATIONS
% uses: ft_freqstatistics

% options for the function
overwrite = true;
running_on_grand_average = false;
input = {'baselined_combined_tfr'};
output = {'statistics/statistics_tfr'};
function_name = 'statistics_tfrs';

% build configuration
cfg = [];
cfg.event_comparisons = {[1 3]}; % events to compare
cfg.method = 'analytic'; %% do a mass-univariate test
cfg.alpha = 0.05; %% critical value around ± 2.09
cfg.statistic = 'depsamplesT'; % use a dependent samples t-test
cfg.design(1, :) = [1:n_subjects 1:n_subjects];
cfg.design(2, :) = [ones(1, n_subjects) 2 * ones(1, n_subjects)];
cfg.uvar = 1; % first row of cfg.design, containing the (u)nits (subjects)
cfg.ivar = 2; % second row of cfg.design, the (i)ndependent events (3&15)

% Run "apply_across_subjects" function
apply_across_subjects(subjects, data_dir, function_name, ...
                      cfg, output, input, figures_dir, overwrite, ...
                      running_on_grand_average);
                  
%% STATISTICS BEAMFORMER 
% uses: ft_sourcestatistics

% options for the function
overwrite = true;
running_on_grand_average = false;
input = {'beamformer_contrasts'};
output = {'statistics/statistics_beamformer'};
function_name = 'statistics_beamformer';

% build configuration
cfg = [];
cfg.event_comparisons = {[1 3]}; % events to compare
cfg.method = 'analytic'; %% do a mass-univariate test
cfg.alpha = 0.05; %% critical value around ± 2.09
cfg.statistic = 'depsamplesT'; % use a dependent samples t-test
cfg.design(1, :) = [1:n_subjects 1:n_subjects];
cfg.design(2, :) = [ones(1, n_subjects) 2 * ones(1, n_subjects)];
cfg.uvar = 1; % first row of cfg.design, containing the (u)nits (subjects)
cfg.ivar = 2; % second row of cfg.design, the (i)ndependent events (3&15)

cfg.template_path = fullfile(matlab_dir, 'fieldtrip', 'template', ...
                            'sourcemodel', ...
                            'standard_sourcemodel3d10mm.mat');

% Run "apply_across_subjects" function
apply_across_subjects(subjects, data_dir, function_name, ...
                      cfg, output, input, figures_dir, overwrite, ...
                      running_on_grand_average);
                  
%% INTERPOLATE STATISTICS BEAMFORMER 
% uses: ft_sourceinterpolate

% options for the function
overwrite = true;
running_on_grand_average = true;
input = {'statistics/statistics_beamformer'};
output = {'statistics/statistics_beamformer_interpolated'};
function_name = 'interpolate_statistics_beamformer';

% build configuration
cfg = [];
cfg.parameter = {'stat' 'inside' 'prob', 'mask'};%parameters to interpolate
cfg.downsample = 2;
cfg.interpmethod = 'linear';

cfg.event_comparisons = {[1 3]};
cfg.template_path = fullfile(matlab_dir, 'fieldtrip', 'template', ...
                            'headmodel', 'standard_mri.mat');

% Run "apply_across_subjects" function
apply_across_subjects(subjects, data_dir, function_name, ...
                      cfg, output, input, figures_dir, overwrite, ...
                      running_on_grand_average);                       
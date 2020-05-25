% SET PATHS

clearvars variables -except ft_default do_subject
restoredefaultpath; %% set a clean path
datainfo; % load the relevant directories
figures_dir = [];
%% ADD PATHS

% add your fieldtrip
addpath(fieldtrip_dir);
ft_defaults %% initialize FieldTrip defaults

% functions needed for analysis
addpath(fullfile(script_dir, 'general_functions'));
addpath(fullfile(script_dir, 'mr_preprocessing_functions'));

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
                 
%% CHOOSE THE NUMBER OF SUBJECTS RUN
% index subjects from 1:20 according to how many you want to run (:) all

subjects = subjects(do_subject);

%% The following sections cannot be completed because raw anatomical data are missing. Use mri_segmented.mat to continue.
%{
%% READ DICOMS
%uses: ft_read_mri

% options for the functions
overwrite = true;
input = {}; %% no MATLAB file format input
output = {'mri'};
function_name = 'read_dicoms';

% build configuration
cfg = []; %% initialize
cfg.dicom_path = data_dir;
% only first dicom is needed
cfg.dicom_file = fullfile('ses-mri', 'anat', '00000001.dcm');
cfg.coordsys = 'neuromag'; %% supply coordinate system

loop_through_subjects(subjects, data_dir, function_name, ...
		      cfg, output, input, figures_dir, overwrite);

%% CO-REGISTER MR-IMAGE TO FIDUCIALS
%uses: ft_volumerealign	

% options for the functions
overwrite = true;
input = {'mri'};
output = {'mri_realigned_fiducials'};
function_name = 'realign_to_fiducials';

% build configuration
cfg = []; %% initialize
cfg.method = 'interactive';
cfg.coordsys = 'neuromag';

loop_through_subjects(subjects, data_dir, function_name, ...
		      cfg, output, input, figures_dir, overwrite);

%% CO-REGISTER TO DIGITIZATION POINTS
%uses: ft_volumerealign	and ft_read_headshape

% options for the functions
overwrite = true;
input = {'mri_realigned_fiducials'};
output = {'mri_realigned_digitization_points'};
function_name = 'realign_to_digitization_points';

% build configuration
cfg = []; %% initialize
cfg.method = 'headshape';
cfg.coordsys = 'neuromag';
cfg.headshape.ica = 'yes'; % iterative closest point procedure
cfg.headshape_file = 'oddball_absence-tsss-mc_meg.fif';

loop_through_subjects(subjects, data_dir, function_name, ...
		      cfg, output, input, figures_dir, overwrite);

%% SEGMENT IMAGE INTO BRAIN, SKULL AND SCALP
%uses: ft_volumesegment

% options for the functions
overwrite = true;
input = {'mri_realigned_digitization_points'};
output = {'mri_segmented'};
function_name = 'segment_mri';

% build configuration
cfg = []; %% initialize
cfg.output = {'brain' 'skull' 'scalp'};

loop_through_subjects(subjects, data_dir, function_name, ...
		      cfg, output, input, figures_dir, overwrite);
%}
%% CREATE BRAIN MESH
%uses: ft_prepare_mesh

% options for the functions
overwrite = true;
input = {'mri_segmented'};
output = {'brain_mesh'};
function_name = 'make_brain_mesh';

% build configuration
cfg = []; %% initialize
cfg.method = 'projectmesh';
cfg.tissue = 'brain';
cfg.numvertices = 3000;

loop_through_subjects(subjects, data_dir, function_name, ...
		      cfg, output, input, figures_dir, overwrite);

%% CREATE HEADMODEL
%uses: ft_prepare_headmodel

% options for the functions
overwrite = true;
input = {'brain_mesh'};
output = {'headmodel'};
function_name = 'make_headmodel';

% build configuration
cfg = []; %% initialize
cfg.method = 'singleshell';

loop_through_subjects(subjects, data_dir, function_name, ...
		      cfg, output, input, figures_dir, overwrite);

%% CREATE GRID WARPED TO STANDARD MNI BRAIN
%uses: ft_prepare_sourcemodel

% options for the functions
overwrite = true;
% Note that the input below ("mri_realigned_digitization_points") 
% was changed to ("mri_segmented") in v1.1 (github) due to the realization 
% that "mri_realigned_digitization_points" wasn't included in the Zenodo
% repository
% input = {'mri_realigned_digitization_points'};
input = {'mri_segmented'};
output = {'warped_grid'};
function_name = 'make_warped_grid';

% build configuration
cfg = []; %% initialize
cfg.warpmni = 'yes';
cfg.template = fullfile(matlab_dir, 'fieldtrip', ...
                            'template', 'sourcemodel', ...
                            'standard_sourcemodel3d10mm.mat');
cfg.nonlinear = 'yes';
cfg.unit = 'mm';

loop_through_subjects(subjects, data_dir, function_name, ...
		      cfg, output, input, figures_dir, overwrite);

%% CREATE LEADFIELD
%uses: ft_prepare_leadfield

% options for the functions
overwrite = true;
input = {'warped_grid' 'headmodel'};
output = {'leadfield'};
function_name = 'make_leadfield';

% build configuration
cfg = []; %% initialize
cfg.channel = {'MEGGRAD'};
cfg.sensors_file = 'oddball_absence-tsss-mc_meg.fif';

loop_through_subjects(subjects, data_dir, function_name, ...
		      cfg, output, input, figures_dir, overwrite);
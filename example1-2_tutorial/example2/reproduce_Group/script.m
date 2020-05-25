%%

% a new input variable is entering the pipeline here: ft_multiplotER_20200324T125927_input_varargin_1.mat
% a new input variable is entering the pipeline here: ft_multiplotER_20200324T125927_input_varargin_2.mat
% a new input variable is entering the pipeline here: ft_multiplotER_20200324T125927_input_varargin_3.mat
% a new input variable is entering the pipeline here: ft_multiplotER_20200324T125927_input_varargin_4.mat

cfg = [];
cfg.showlabels = 'no';
cfg.fontsize = 6;
cfg.layout = 'CTF151_helmet.mat';
cfg.baseline = [-0.2 0];
cfg.xlim = [-0.2 1];
cfg.ylim = [-3e-13 3e-13];
cfg.inputfile = {
 'reproduce_Group/ft_multiplotER_20200324T125927_input_varargin_1.mat', 'reproduce_Group/ft_multiplotER_20200324T125927_input_varargin_2.mat', 'reproduce_Group/ft_multiplotER_20200324T125927_input_varargin_3.mat', 'reproduce_Group/ft_multiplotER_20200324T125927_input_varargin_4.mat'
};
cfg.outputfile = 'reproduce_Group/20200324T125940_ft_multiplotER_output';
ft_multiplotER(cfg);

%%

% a new input variable is entering the pipeline here: ft_multiplotER_20200324T125954_input_varargin_1.mat
% a new input variable is entering the pipeline here: ft_multiplotER_20200324T125954_input_varargin_2.mat
% a new input variable is entering the pipeline here: ft_multiplotER_20200324T125954_input_varargin_3.mat
% a new input variable is entering the pipeline here: ft_multiplotER_20200324T125954_input_varargin_4.mat

cfg = [];
cfg.showlabels = 'no';
cfg.fontsize = 6;
cfg.layout = 'CTF151_helmet.mat';
cfg.baseline = [-0.2 0];
cfg.xlim = [-0.2 1];
cfg.ylim = [-3e-13 3e-13];
cfg.inputfile = {
 'reproduce_Group/ft_multiplotER_20200324T125954_input_varargin_1.mat', 'reproduce_Group/ft_multiplotER_20200324T125954_input_varargin_2.mat', 'reproduce_Group/ft_multiplotER_20200324T125954_input_varargin_3.mat', 'reproduce_Group/ft_multiplotER_20200324T125954_input_varargin_4.mat'
};
cfg.outputfile = 'reproduce_Group/20200324T130007_ft_multiplotER_output';
ft_multiplotER(cfg);

%%

% a new input variable is entering the pipeline here: ft_multiplotER_20200324T130018_input_varargin_1.mat
% a new input variable is entering the pipeline here: ft_multiplotER_20200324T130018_input_varargin_2.mat
% a new input variable is entering the pipeline here: ft_multiplotER_20200324T130018_input_varargin_3.mat
% a new input variable is entering the pipeline here: ft_multiplotER_20200324T130018_input_varargin_4.mat

cfg = [];
cfg.showlabels = 'no';
cfg.fontsize = 6;
cfg.layout = 'CTF151_helmet.mat';
cfg.baseline = [-0.2 0];
cfg.xlim = [-0.2 1];
cfg.ylim = [-3e-13 3e-13];
cfg.inputfile = {
 'reproduce_Group/ft_multiplotER_20200324T130018_input_varargin_1.mat', 'reproduce_Group/ft_multiplotER_20200324T130018_input_varargin_2.mat', 'reproduce_Group/ft_multiplotER_20200324T130018_input_varargin_3.mat', 'reproduce_Group/ft_multiplotER_20200324T130018_input_varargin_4.mat'
};
cfg.outputfile = 'reproduce_Group/20200324T130029_ft_multiplotER_output';
ft_multiplotER(cfg);

%%

cfg = [];
cfg.parameter = 'avg';
cfg.operation = 'x1-x2';
cfg.inputfile = {
 'reproduce_Group/ft_multiplotER_20200324T125927_input_varargin_1.mat', 'reproduce_Group/ft_multiplotER_20200324T125954_input_varargin_1.mat'
};
cfg.outputfile = { 'reproduce_Group/20200324T130043_ft_math_output_data.mat' };
ft_math(cfg);

%%

cfg = [];
cfg.parameter = 'avg';
cfg.operation = 'x1-x2';
cfg.inputfile = {
 'reproduce_Group/ft_multiplotER_20200324T125927_input_varargin_2.mat', 'reproduce_Group/ft_multiplotER_20200324T125954_input_varargin_2.mat'
};
cfg.outputfile = { 'reproduce_Group/20200324T130046_ft_math_output_data.mat' };
ft_math(cfg);

%%

cfg = [];
cfg.parameter = 'avg';
cfg.operation = 'x1-x2';
cfg.inputfile = {
 'reproduce_Group/ft_multiplotER_20200324T125927_input_varargin_3.mat', 'reproduce_Group/ft_multiplotER_20200324T125954_input_varargin_3.mat'
};
cfg.outputfile = { 'reproduce_Group/20200324T130048_ft_math_output_data.mat' };
ft_math(cfg);

%%

cfg = [];
cfg.parameter = 'avg';
cfg.operation = 'x1-x2';
cfg.inputfile = {
 'reproduce_Group/ft_multiplotER_20200324T125927_input_varargin_4.mat', 'reproduce_Group/ft_multiplotER_20200324T125954_input_varargin_4.mat'
};
cfg.outputfile = { 'reproduce_Group/20200324T130051_ft_math_output_data.mat' };
ft_math(cfg);

%%

cfg = [];
cfg.showlabels = 'no';
cfg.fontsize = 6;
cfg.layout = 'CTF151_helmet.mat';
cfg.baseline = [-0.2 0];
cfg.xlim = [-0.2 1];
cfg.ylim = [-3e-13 3e-13];
cfg.inputfile = {
 'reproduce_Group/20200324T130043_ft_math_output_data.mat', 'reproduce_Group/20200324T130046_ft_math_output_data.mat', 'reproduce_Group/20200324T130048_ft_math_output_data.mat', 'reproduce_Group/20200324T130051_ft_math_output_data.mat'
};
cfg.outputfile = 'reproduce_Group/20200324T130103_ft_multiplotER_output';
ft_multiplotER(cfg);

%%

% a new input variable is entering the pipeline here: ft_timelockgrandaverage_20200324T130115_input_varargin_1.mat
% a new input variable is entering the pipeline here: ft_timelockgrandaverage_20200324T130115_input_varargin_2.mat
% a new input variable is entering the pipeline here: ft_timelockgrandaverage_20200324T130115_input_varargin_3.mat
% a new input variable is entering the pipeline here: ft_timelockgrandaverage_20200324T130115_input_varargin_4.mat

cfg = [];
cfg.inputfile = {
 'reproduce_Group/ft_timelockgrandaverage_20200324T130115_input_varargin_1.mat', 'reproduce_Group/ft_timelockgrandaverage_20200324T130115_input_varargin_2.mat', 'reproduce_Group/ft_timelockgrandaverage_20200324T130115_input_varargin_3.mat', 'reproduce_Group/ft_timelockgrandaverage_20200324T130115_input_varargin_4.mat'
};
cfg.outputfile = { 'reproduce_Group/20200324T130117_ft_timelockgrandaverage_output_grandavg.mat' };
ft_timelockgrandaverage(cfg);

%%

% a new input variable is entering the pipeline here: ft_timelockgrandaverage_20200324T130119_input_varargin_1.mat
% a new input variable is entering the pipeline here: ft_timelockgrandaverage_20200324T130119_input_varargin_2.mat
% a new input variable is entering the pipeline here: ft_timelockgrandaverage_20200324T130119_input_varargin_3.mat
% a new input variable is entering the pipeline here: ft_timelockgrandaverage_20200324T130119_input_varargin_4.mat

cfg = [];
cfg.inputfile = {
 'reproduce_Group/ft_timelockgrandaverage_20200324T130119_input_varargin_1.mat', 'reproduce_Group/ft_timelockgrandaverage_20200324T130119_input_varargin_2.mat', 'reproduce_Group/ft_timelockgrandaverage_20200324T130119_input_varargin_3.mat', 'reproduce_Group/ft_timelockgrandaverage_20200324T130119_input_varargin_4.mat'
};
cfg.outputfile = { 'reproduce_Group/20200324T130121_ft_timelockgrandaverage_output_grandavg.mat' };
ft_timelockgrandaverage(cfg);

%%

% a new input variable is entering the pipeline here: ft_timelockgrandaverage_20200324T130123_input_varargin_1.mat
% a new input variable is entering the pipeline here: ft_timelockgrandaverage_20200324T130123_input_varargin_2.mat
% a new input variable is entering the pipeline here: ft_timelockgrandaverage_20200324T130123_input_varargin_3.mat
% a new input variable is entering the pipeline here: ft_timelockgrandaverage_20200324T130123_input_varargin_4.mat

cfg = [];
cfg.inputfile = {
 'reproduce_Group/ft_timelockgrandaverage_20200324T130123_input_varargin_1.mat', 'reproduce_Group/ft_timelockgrandaverage_20200324T130123_input_varargin_2.mat', 'reproduce_Group/ft_timelockgrandaverage_20200324T130123_input_varargin_3.mat', 'reproduce_Group/ft_timelockgrandaverage_20200324T130123_input_varargin_4.mat'
};
cfg.outputfile = { 'reproduce_Group/20200324T130125_ft_timelockgrandaverage_output_grandavg.mat' };
ft_timelockgrandaverage(cfg);


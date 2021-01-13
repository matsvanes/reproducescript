%%

% a new input variable is entering the pipeline here: 20210112T114236_ft_multiplotER_input_varargin_1.mat
% a new input variable is entering the pipeline here: 20210112T114236_ft_multiplotER_input_varargin_2.mat
% a new input variable is entering the pipeline here: 20210112T114236_ft_multiplotER_input_varargin_3.mat
% a new input variable is entering the pipeline here: 20210112T114236_ft_multiplotER_input_varargin_4.mat

cfg = [];
cfg.showlabels = 'no';
cfg.fontsize = 6;
cfg.layout = 'CTF151_helmet.mat';
cfg.baseline = [-0.2 0];
cfg.xlim = [-0.2 1];
cfg.ylim = [-3e-13 3e-13];
cfg.tracktimeinfo = 'yes';
cfg.trackmeminfo = 'yes';
cfg.inputfile = { 'reproduce_Group/20210112T114236_ft_multiplotER_input_varargin_1.mat', 'reproduce_Group/20210112T114236_ft_multiplotER_input_varargin_2.mat', 'reproduce_Group/20210112T114236_ft_multiplotER_input_varargin_3.mat', 'reproduce_Group/20210112T114236_ft_multiplotER_input_varargin_4.mat' };
cfg.outputfile = 'reproduce_Group/20210112T114246_ft_multiplotER_output';
figure; 
ft_multiplotER(cfg);

%%

% a new input variable is entering the pipeline here: 20210112T114253_ft_multiplotER_input_varargin_1.mat
% a new input variable is entering the pipeline here: 20210112T114253_ft_multiplotER_input_varargin_2.mat
% a new input variable is entering the pipeline here: 20210112T114253_ft_multiplotER_input_varargin_3.mat
% a new input variable is entering the pipeline here: 20210112T114253_ft_multiplotER_input_varargin_4.mat

cfg = [];
cfg.showlabels = 'no';
cfg.fontsize = 6;
cfg.layout = 'CTF151_helmet.mat';
cfg.baseline = [-0.2 0];
cfg.xlim = [-0.2 1];
cfg.ylim = [-3e-13 3e-13];
cfg.tracktimeinfo = 'yes';
cfg.trackmeminfo = 'yes';
cfg.inputfile = { 'reproduce_Group/20210112T114253_ft_multiplotER_input_varargin_1.mat', 'reproduce_Group/20210112T114253_ft_multiplotER_input_varargin_2.mat', 'reproduce_Group/20210112T114253_ft_multiplotER_input_varargin_3.mat', 'reproduce_Group/20210112T114253_ft_multiplotER_input_varargin_4.mat' };
cfg.outputfile = 'reproduce_Group/20210112T114303_ft_multiplotER_output';
figure; 
ft_multiplotER(cfg);

%%

% a new input variable is entering the pipeline here: 20210112T114310_ft_multiplotER_input_varargin_1.mat
% a new input variable is entering the pipeline here: 20210112T114310_ft_multiplotER_input_varargin_2.mat
% a new input variable is entering the pipeline here: 20210112T114310_ft_multiplotER_input_varargin_3.mat
% a new input variable is entering the pipeline here: 20210112T114310_ft_multiplotER_input_varargin_4.mat

cfg = [];
cfg.showlabels = 'no';
cfg.fontsize = 6;
cfg.layout = 'CTF151_helmet.mat';
cfg.baseline = [-0.2 0];
cfg.xlim = [-0.2 1];
cfg.ylim = [-3e-13 3e-13];
cfg.tracktimeinfo = 'yes';
cfg.trackmeminfo = 'yes';
cfg.inputfile = { 'reproduce_Group/20210112T114310_ft_multiplotER_input_varargin_1.mat', 'reproduce_Group/20210112T114310_ft_multiplotER_input_varargin_2.mat', 'reproduce_Group/20210112T114310_ft_multiplotER_input_varargin_3.mat', 'reproduce_Group/20210112T114310_ft_multiplotER_input_varargin_4.mat' };
cfg.outputfile = 'reproduce_Group/20210112T114321_ft_multiplotER_output';
figure; 
ft_multiplotER(cfg);

%%

cfg = [];
cfg.parameter = 'avg';
cfg.operation = 'x1-x2';
cfg.tracktimeinfo = 'yes';
cfg.trackmeminfo = 'yes';
cfg.inputfile = { 'reproduce_Group/20210112T114236_ft_multiplotER_input_varargin_1.mat', 'reproduce_Group/20210112T114253_ft_multiplotER_input_varargin_1.mat' };
cfg.outputfile = { 'reproduce_Group/20210112T114330_ft_math_output_data.mat' };
ft_math(cfg);

%%

cfg = [];
cfg.parameter = 'avg';
cfg.operation = 'x1-x2';
cfg.tracktimeinfo = 'yes';
cfg.trackmeminfo = 'yes';
cfg.inputfile = { 'reproduce_Group/20210112T114236_ft_multiplotER_input_varargin_2.mat', 'reproduce_Group/20210112T114253_ft_multiplotER_input_varargin_2.mat' };
cfg.outputfile = { 'reproduce_Group/20210112T114333_ft_math_output_data.mat' };
ft_math(cfg);

%%

cfg = [];
cfg.parameter = 'avg';
cfg.operation = 'x1-x2';
cfg.tracktimeinfo = 'yes';
cfg.trackmeminfo = 'yes';
cfg.inputfile = { 'reproduce_Group/20210112T114236_ft_multiplotER_input_varargin_3.mat', 'reproduce_Group/20210112T114253_ft_multiplotER_input_varargin_3.mat' };
cfg.outputfile = { 'reproduce_Group/20210112T114337_ft_math_output_data.mat' };
ft_math(cfg);

%%

cfg = [];
cfg.parameter = 'avg';
cfg.operation = 'x1-x2';
cfg.tracktimeinfo = 'yes';
cfg.trackmeminfo = 'yes';
cfg.inputfile = { 'reproduce_Group/20210112T114236_ft_multiplotER_input_varargin_4.mat', 'reproduce_Group/20210112T114253_ft_multiplotER_input_varargin_4.mat' };
cfg.outputfile = { 'reproduce_Group/20210112T114340_ft_math_output_data.mat' };
ft_math(cfg);

%%

cfg = [];
cfg.showlabels = 'no';
cfg.fontsize = 6;
cfg.layout = 'CTF151_helmet.mat';
cfg.baseline = [-0.2 0];
cfg.xlim = [-0.2 1];
cfg.ylim = [-3e-13 3e-13];
cfg.tracktimeinfo = 'yes';
cfg.trackmeminfo = 'yes';
cfg.inputfile = { 'reproduce_Group/20210112T114330_ft_math_output_data.mat', 'reproduce_Group/20210112T114333_ft_math_output_data.mat', 'reproduce_Group/20210112T114337_ft_math_output_data.mat', 'reproduce_Group/20210112T114340_ft_math_output_data.mat' };
cfg.outputfile = 'reproduce_Group/20210112T114351_ft_multiplotER_output';
figure; 
ft_multiplotER(cfg);

%%

% a new input variable is entering the pipeline here: 20210112T114358_ft_timelockgrandaverage_input_varargin_1.mat
% a new input variable is entering the pipeline here: 20210112T114358_ft_timelockgrandaverage_input_varargin_2.mat
% a new input variable is entering the pipeline here: 20210112T114358_ft_timelockgrandaverage_input_varargin_3.mat
% a new input variable is entering the pipeline here: 20210112T114358_ft_timelockgrandaverage_input_varargin_4.mat

cfg = [];
cfg.tracktimeinfo = 'yes';
cfg.trackmeminfo = 'yes';
cfg.inputfile = { 'reproduce_Group/20210112T114358_ft_timelockgrandaverage_input_varargin_1.mat', 'reproduce_Group/20210112T114358_ft_timelockgrandaverage_input_varargin_2.mat', 'reproduce_Group/20210112T114358_ft_timelockgrandaverage_input_varargin_3.mat', 'reproduce_Group/20210112T114358_ft_timelockgrandaverage_input_varargin_4.mat' };
cfg.outputfile = { 'reproduce_Group/20210112T114403_ft_timelockgrandaverage_output_grandavg.mat' };
ft_timelockgrandaverage(cfg);

%%

% a new input variable is entering the pipeline here: 20210112T114404_ft_timelockgrandaverage_input_varargin_1.mat
% a new input variable is entering the pipeline here: 20210112T114404_ft_timelockgrandaverage_input_varargin_2.mat
% a new input variable is entering the pipeline here: 20210112T114404_ft_timelockgrandaverage_input_varargin_3.mat
% a new input variable is entering the pipeline here: 20210112T114404_ft_timelockgrandaverage_input_varargin_4.mat

cfg = [];
cfg.tracktimeinfo = 'yes';
cfg.trackmeminfo = 'yes';
cfg.inputfile = { 'reproduce_Group/20210112T114404_ft_timelockgrandaverage_input_varargin_1.mat', 'reproduce_Group/20210112T114404_ft_timelockgrandaverage_input_varargin_2.mat', 'reproduce_Group/20210112T114404_ft_timelockgrandaverage_input_varargin_3.mat', 'reproduce_Group/20210112T114404_ft_timelockgrandaverage_input_varargin_4.mat' };
cfg.outputfile = { 'reproduce_Group/20210112T114409_ft_timelockgrandaverage_output_grandavg.mat' };
ft_timelockgrandaverage(cfg);

%%

% a new input variable is entering the pipeline here: 20210112T114411_ft_timelockgrandaverage_input_varargin_1.mat
% a new input variable is entering the pipeline here: 20210112T114411_ft_timelockgrandaverage_input_varargin_2.mat
% a new input variable is entering the pipeline here: 20210112T114411_ft_timelockgrandaverage_input_varargin_3.mat
% a new input variable is entering the pipeline here: 20210112T114411_ft_timelockgrandaverage_input_varargin_4.mat

cfg = [];
cfg.tracktimeinfo = 'yes';
cfg.trackmeminfo = 'yes';
cfg.inputfile = { 'reproduce_Group/20210112T114411_ft_timelockgrandaverage_input_varargin_1.mat', 'reproduce_Group/20210112T114411_ft_timelockgrandaverage_input_varargin_2.mat', 'reproduce_Group/20210112T114411_ft_timelockgrandaverage_input_varargin_3.mat', 'reproduce_Group/20210112T114411_ft_timelockgrandaverage_input_varargin_4.mat' };
cfg.outputfile = { 'reproduce_Group/20210112T114415_ft_timelockgrandaverage_output_grandavg.mat' };
ft_timelockgrandaverage(cfg);


%%

cfg = [];
cfg.dataset = '../rawdata/Subject02.ds';
cfg.trialfun = 'ft_trialfun_general';
cfg.trialdef.eventtype = 'backpanel trigger';
cfg.trialdef.eventvalue = [3 5 9];
cfg.trialdef.prestim = 1;
cfg.trialdef.poststim = 2;
cfg = ft_definetrial(cfg);

%%

cfg = [];
cfg.dataset = '../rawdata/Subject02.ds';
cfg.trialfun = 'ft_trialfun_general';
cfg.trialdef.eventtype = 'backpanel trigger';
cfg.trialdef.eventvalue = [3 5 9];
cfg.trialdef.prestim = 1;
cfg.trialdef.poststim = 2;
cfg.datafile = '../rawdata/Subject02.ds/Subject02.meg4';
cfg.headerfile = '../rawdata/Subject02.ds/Subject02.res4';
cfg.dataformat = 'ctf_meg4';
cfg.headerformat = 'ctf_res4';
cfg.trl = 'reproduce_Subject02/20200324T124101_ft_preprocessing_largecfginput_trl.mat';
cfg.outputfile = { 'reproduce_Subject02/20200324T124101_ft_preprocessing_output_data.mat' };
cfg.channel = {
 'MEG', 'EEG029'
};
cfg.continuous = 'yes';
ft_preprocessing(cfg);

%%

cfg = [];
cfg.artfctdef.visual.artifact = [39601 40500;
48601 49500;
51301 52200;
71101 72000;
74701 75600;
14401 15300;
27001 27900;
30601 31500;
38701 39600;
66601 67500;
67501 68400;
70201 71100;
98101 99000;
169201 170100;
186301 187200;
207901 208800;
209701 210600];
cfg.inputfile = { 'reproduce_Subject02/20200324T124101_ft_preprocessing_output_data.mat' };
cfg.outputfile = { 'reproduce_Subject02/20200324T124108_ft_rejectartifact_output_data.mat' };
ft_rejectartifact(cfg);

%%

cfg = [];
cfg.trials = logical([false true false false true true false false true false true false true false true false false false false true false true true false false false false false true false true false false false false true false false false false false false false true false false true true false false true false false false true false false false true true false false false false false false false false false false false false true false false true false false false true true false true true false true false true false true false false false false false false true false false true false false false true false true false false false false false false false false true true false true false false false true true false false false false false false false false true true false false true false true true false true true true false false false true false true true false false false false false false false true false false true true false true false true true false false false false false true false true false false false false false true true false true true false true false false false false false true false false true false false false false false false true true false true false true true false true false true false false true false false false false false false false true false false true false false false true false false false true false false false true false true false true true]).';
cfg.inputfile = { 'reproduce_Subject02/20200324T124108_ft_rejectartifact_output_data.mat' };
cfg.outputfile = { 'reproduce_Subject02/20200324T124115_ft_timelockanalysis_output_timelock.mat' };
ft_timelockanalysis(cfg);

%%

cfg = [];
cfg.trials = logical([true false true false false false true false false false false false false true false true false false false false false false false false true true false false false false false true true true false false false false false true true false true false false true false false false true false false false true false false true true false false true true true false false true true true true false false false false false true false true true false false false true false false true false false false false false false true true false true false false true false false false true false false true false true false false true false false true false false false true false true false true false false false false true false true false true false false false true true false false false false true false false false true false true false true false false true false false true false false true false true true false false false false true false false false false false false false false false false false true true true false false false true false false false false false true true true false false false true false true true false false false false false false false false false false false true false true false false false false false true true false true true true false false true false true false true false false true true false true false false false true false false false false]).';
cfg.inputfile = { 'reproduce_Subject02/20200324T124108_ft_rejectartifact_output_data.mat' };
cfg.outputfile = { 'reproduce_Subject02/20200324T124119_ft_timelockanalysis_output_timelock.mat' };
ft_timelockanalysis(cfg);

%%

cfg = [];
cfg.trials = logical([false false false true false false false true false true false true false false false false true true true false true false false true false false true true false true false false false false true false true true true false false true false false true false false false true false false true true false false true false false false false false false false true true false false false false true true true false true false false false false true false false false false false false false true false true false true false false true false true false false true false true false true false false false false true true false true true false true false false false false false true false false false true true false true false true false true false false false false false true false false false false false false false true false false false false false false true true false true true false false false false false false true false false false false true true true true true false true false true false false false true false false false false false true false true false false false true false true false false false false true true true true false false true false true false false false false false false true true false true false false true false false false false true false false false true false false true false false false false true true false false false true false false]).';
cfg.inputfile = { 'reproduce_Subject02/20200324T124108_ft_rejectartifact_output_data.mat' };
cfg.outputfile = { 'reproduce_Subject02/20200324T124122_ft_timelockanalysis_output_timelock.mat' };
ft_timelockanalysis(cfg);

%%

cfg = [];
cfg.showlabels = 'no';
cfg.fontsize = 6;
cfg.layout = 'CTF151_helmet.mat';
cfg.baseline = [-0.2 0];
cfg.xlim = [-0.2 1];
cfg.ylim = [-3e-13 3e-13];
cfg.inputfile = {
 'reproduce_Subject02/20200324T124119_ft_timelockanalysis_output_timelock.mat', 'reproduce_Subject02/20200324T124122_ft_timelockanalysis_output_timelock.mat', 'reproduce_Subject02/20200324T124115_ft_timelockanalysis_output_timelock.mat'
};
cfg.outputfile = 'reproduce_Subject02/20200324T124132_ft_multiplotER_output';
ft_multiplotER(cfg);

%%

cfg = [];
cfg.feedback = 'yes';
cfg.method = 'template';
cfg.neighbours = 'reproduce_Subject02/20200324T124152_ft_megplanar_largecfginput_neighbours.mat';
cfg.planarmethod = 'sincos';
cfg.inputfile = { 'reproduce_Subject02/20200324T124115_ft_timelockanalysis_output_timelock.mat' };
cfg.outputfile = { 'reproduce_Subject02/20200324T124152_ft_megplanar_output_data.mat' };
ft_megplanar(cfg);

%%

cfg = [];
cfg.feedback = 'yes';
cfg.method = 'template';
cfg.neighbours = 'reproduce_Subject02/20200324T124152_ft_megplanar_largecfginput_neighbours.mat';
cfg.planarmethod = 'sincos';
cfg.inputfile = { 'reproduce_Subject02/20200324T124119_ft_timelockanalysis_output_timelock.mat' };
cfg.outputfile = { 'reproduce_Subject02/20200324T124155_ft_megplanar_output_data.mat' };
ft_megplanar(cfg);

%%

cfg = [];
cfg.feedback = 'yes';
cfg.method = 'template';
cfg.neighbours = 'reproduce_Subject02/20200324T124152_ft_megplanar_largecfginput_neighbours.mat';
cfg.planarmethod = 'sincos';
cfg.inputfile = { 'reproduce_Subject02/20200324T124122_ft_timelockanalysis_output_timelock.mat' };
cfg.outputfile = { 'reproduce_Subject02/20200324T124158_ft_megplanar_output_data.mat' };
ft_megplanar(cfg);

%%

cfg = [];
cfg.inputfile = { 'reproduce_Subject02/20200324T124152_ft_megplanar_output_data.mat' };
cfg.outputfile = { 'reproduce_Subject02/20200324T124201_ft_combineplanar_output_data.mat' };
ft_combineplanar(cfg);

%%

cfg = [];
cfg.inputfile = { 'reproduce_Subject02/20200324T124155_ft_megplanar_output_data.mat' };
cfg.outputfile = { 'reproduce_Subject02/20200324T124204_ft_combineplanar_output_data.mat' };
ft_combineplanar(cfg);

%%

cfg = [];
cfg.inputfile = { 'reproduce_Subject02/20200324T124158_ft_megplanar_output_data.mat' };
cfg.outputfile = { 'reproduce_Subject02/20200324T124206_ft_combineplanar_output_data.mat' };
ft_combineplanar(cfg);

%%

cfg = [];
cfg.xlim = [0.3 0.5];
cfg.zlim = 'maxmin';
cfg.colorbar = 'yes';
cfg.layout = 'CTF151_helmet.mat';
cfg.inputfile = { 'reproduce_Subject02/20200324T124115_ft_timelockanalysis_output_timelock.mat' };
cfg.outputfile = 'reproduce_Subject02/20200324T124210_ft_topoplotER_output';
ft_topoplotER(cfg);

%%

cfg = [];
cfg.xlim = [0.3 0.5];
cfg.zlim = 'maxmin';
cfg.colorbar = 'yes';
cfg.layout = 'CTF151_helmet.mat';
cfg.inputfile = { 'reproduce_Subject02/20200324T124119_ft_timelockanalysis_output_timelock.mat' };
cfg.outputfile = 'reproduce_Subject02/20200324T124215_ft_topoplotER_output';
ft_topoplotER(cfg);

%%

cfg = [];
cfg.xlim = [0.3 0.5];
cfg.zlim = 'maxmin';
cfg.colorbar = 'yes';
cfg.layout = 'CTF151_helmet.mat';
cfg.inputfile = { 'reproduce_Subject02/20200324T124122_ft_timelockanalysis_output_timelock.mat' };
cfg.outputfile = 'reproduce_Subject02/20200324T124219_ft_topoplotER_output';
ft_topoplotER(cfg);

%%

cfg = [];
cfg.xlim = [0.3 0.5];
cfg.zlim = 'maxabs';
cfg.colorbar = 'yes';
cfg.layout = 'CTF151_helmet.mat';
cfg.inputfile = { 'reproduce_Subject02/20200324T124201_ft_combineplanar_output_data.mat' };
cfg.outputfile = 'reproduce_Subject02/20200324T124224_ft_topoplotER_output';
ft_topoplotER(cfg);

%%

cfg = [];
cfg.xlim = [0.3 0.5];
cfg.zlim = 'maxabs';
cfg.colorbar = 'yes';
cfg.layout = 'CTF151_helmet.mat';
cfg.inputfile = { 'reproduce_Subject02/20200324T124204_ft_combineplanar_output_data.mat' };
cfg.outputfile = 'reproduce_Subject02/20200324T124230_ft_topoplotER_output';
ft_topoplotER(cfg);

%%

cfg = [];
cfg.xlim = [0.3 0.5];
cfg.zlim = 'maxabs';
cfg.colorbar = 'yes';
cfg.layout = 'CTF151_helmet.mat';
cfg.inputfile = { 'reproduce_Subject02/20200324T124206_ft_combineplanar_output_data.mat' };
cfg.outputfile = 'reproduce_Subject02/20200324T124238_ft_topoplotER_output';
ft_topoplotER(cfg);


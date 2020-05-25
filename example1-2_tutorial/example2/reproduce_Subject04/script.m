%%

cfg = [];
cfg.dataset = '../rawdata/Subject04.ds';
cfg.trialfun = 'ft_trialfun_general';
cfg.trialdef.eventtype = 'backpanel trigger';
cfg.trialdef.eventvalue = [3 5 9];
cfg.trialdef.prestim = 1;
cfg.trialdef.poststim = 2;
cfg = ft_definetrial(cfg);

%%

cfg = [];
cfg.dataset = '../rawdata/Subject04.ds';
cfg.trialfun = 'ft_trialfun_general';
cfg.trialdef.eventtype = 'backpanel trigger';
cfg.trialdef.eventvalue = [3 5 9];
cfg.trialdef.prestim = 1;
cfg.trialdef.poststim = 2;
cfg.datafile = '../rawdata/Subject04.ds/Subject04.meg4';
cfg.headerfile = '../rawdata/Subject04.ds/Subject04.res4';
cfg.dataformat = 'ctf_meg4';
cfg.headerformat = 'ctf_res4';
cfg.trl = 'reproduce_Subject04/20200324T124500_ft_preprocessing_largecfginput_trl.mat';
cfg.outputfile = { 'reproduce_Subject04/20200324T124500_ft_preprocessing_output_data.mat' };
cfg.channel = {
 'MEG', 'EOG'
};
cfg.continuous = 'yes';
ft_preprocessing(cfg);

%%

cfg = [];
cfg.artfctdef.visual.artifact = [21601 22500;
130501 131400;
178201 179100;
14401 15300;
36901 37800;
122401 123300;
126901 127800;
160201 161100;
170101 171000;
189901 190800;
211501 212400;
233101 234000;
235801 236700];
cfg.inputfile = { 'reproduce_Subject04/20200324T124500_ft_preprocessing_output_data.mat' };
cfg.outputfile = { 'reproduce_Subject04/20200324T124508_ft_rejectartifact_output_data.mat' };
ft_rejectartifact(cfg);

%%

cfg = [];
cfg.trials = logical([false true false false true true false false true false true false true false true false false false false true false true false false false false false false true false true true false false false false true false false true false false false false false true false false true false true false true false true false false false true false false false true true false false false false false true false false false true true false false false false false false true false false true false false false true true false true true false true false true false true false false false false false false false true false false true false false false true false true false false false false false false false false true true false true false false true true false false false false false false true true false false true false true true false true true true false false false true false true true false false false false false false false true false false true false true false true true false false false false false true false true false false false false false true false true true false true false false true false false false false false true false false false false false false true true false true false true true false true false false false true false true false false false false false false false true false false true false false false true false false false true false false true false false true true]).';
cfg.inputfile = { 'reproduce_Subject04/20200324T124508_ft_rejectartifact_output_data.mat' };
cfg.outputfile = { 'reproduce_Subject04/20200324T124515_ft_timelockanalysis_output_timelock.mat' };
ft_timelockanalysis(cfg);

%%

cfg = [];
cfg.trials = logical([true false true false false false true false false false false false false true false true false false false false false false false true true false false true false false false false true true true false false false false false true true true false true false false true false false false false false true false false false true false false true true false false true true true false false false false true true false false true true false false false false false false true false true true false false false true false false true false false false false false false true true false true true false false true false false false true false false true false true false false true false false true false false false true false true false false false false false false true false false false false true true false false false false true false false false true false true false true false false true false false true false false true false true true false false false true false false false false false false true false false false false true true true false false true false false false false false true false true true false false true false true true false false false false false false false false false false false true false true true false false false false false true true false true true true false false true false true false true false false true true false true false false true false false false]).';
cfg.inputfile = { 'reproduce_Subject04/20200324T124508_ft_rejectartifact_output_data.mat' };
cfg.outputfile = { 'reproduce_Subject04/20200324T124519_ft_timelockanalysis_output_timelock.mat' };
ft_timelockanalysis(cfg);

%%

cfg = [];
cfg.trials = logical([false false false true false false false true false true false true false false false false true true true false true false true false false true true false false true false false false false false true false true true false false false false true false false true false false true false true false false false true true false false true false false false false false false false true true false true false false false false false false true true true true false true false false false false true false false false false false false false true false true false true false false true false false true false false true false true false true false false false false true true false true true false true false false false false false true false false true true true false true true false false false false false true false false false false false false false true false false false false false false true true false true true false false false false false true false false false false true true true true false false true false true false false false true false false false false true false true false false false false true true false false false false true true true true false false true false true false false false false false false true false true false true false false true false false false false true false false false true false false true false false false false true false false true false false]).';
cfg.inputfile = { 'reproduce_Subject04/20200324T124508_ft_rejectartifact_output_data.mat' };
cfg.outputfile = { 'reproduce_Subject04/20200324T124522_ft_timelockanalysis_output_timelock.mat' };
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
 'reproduce_Subject04/20200324T124519_ft_timelockanalysis_output_timelock.mat', 'reproduce_Subject04/20200324T124522_ft_timelockanalysis_output_timelock.mat', 'reproduce_Subject04/20200324T124515_ft_timelockanalysis_output_timelock.mat'
};
cfg.outputfile = 'reproduce_Subject04/20200324T124532_ft_multiplotER_output';
ft_multiplotER(cfg);

%%

cfg = [];
cfg.feedback = 'yes';
cfg.method = 'template';
cfg.neighbours = 'reproduce_Subject04/20200324T124550_ft_megplanar_largecfginput_neighbours.mat';
cfg.planarmethod = 'sincos';
cfg.inputfile = { 'reproduce_Subject04/20200324T124515_ft_timelockanalysis_output_timelock.mat' };
cfg.outputfile = { 'reproduce_Subject04/20200324T124550_ft_megplanar_output_data.mat' };
ft_megplanar(cfg);

%%

cfg = [];
cfg.feedback = 'yes';
cfg.method = 'template';
cfg.neighbours = 'reproduce_Subject04/20200324T124550_ft_megplanar_largecfginput_neighbours.mat';
cfg.planarmethod = 'sincos';
cfg.inputfile = { 'reproduce_Subject04/20200324T124519_ft_timelockanalysis_output_timelock.mat' };
cfg.outputfile = { 'reproduce_Subject04/20200324T124553_ft_megplanar_output_data.mat' };
ft_megplanar(cfg);

%%

cfg = [];
cfg.feedback = 'yes';
cfg.method = 'template';
cfg.neighbours = 'reproduce_Subject04/20200324T124550_ft_megplanar_largecfginput_neighbours.mat';
cfg.planarmethod = 'sincos';
cfg.inputfile = { 'reproduce_Subject04/20200324T124522_ft_timelockanalysis_output_timelock.mat' };
cfg.outputfile = { 'reproduce_Subject04/20200324T124555_ft_megplanar_output_data.mat' };
ft_megplanar(cfg);

%%

cfg = [];
cfg.inputfile = { 'reproduce_Subject04/20200324T124550_ft_megplanar_output_data.mat' };
cfg.outputfile = { 'reproduce_Subject04/20200324T124558_ft_combineplanar_output_data.mat' };
ft_combineplanar(cfg);

%%

cfg = [];
cfg.inputfile = { 'reproduce_Subject04/20200324T124553_ft_megplanar_output_data.mat' };
cfg.outputfile = { 'reproduce_Subject04/20200324T124600_ft_combineplanar_output_data.mat' };
ft_combineplanar(cfg);

%%

cfg = [];
cfg.inputfile = { 'reproduce_Subject04/20200324T124555_ft_megplanar_output_data.mat' };
cfg.outputfile = { 'reproduce_Subject04/20200324T124602_ft_combineplanar_output_data.mat' };
ft_combineplanar(cfg);

%%

cfg = [];
cfg.xlim = [0.3 0.5];
cfg.zlim = 'maxmin';
cfg.colorbar = 'yes';
cfg.layout = 'CTF151_helmet.mat';
cfg.inputfile = { 'reproduce_Subject04/20200324T124515_ft_timelockanalysis_output_timelock.mat' };
cfg.outputfile = 'reproduce_Subject04/20200324T124605_ft_topoplotER_output';
ft_topoplotER(cfg);

%%

cfg = [];
cfg.xlim = [0.3 0.5];
cfg.zlim = 'maxmin';
cfg.colorbar = 'yes';
cfg.layout = 'CTF151_helmet.mat';
cfg.inputfile = { 'reproduce_Subject04/20200324T124519_ft_timelockanalysis_output_timelock.mat' };
cfg.outputfile = 'reproduce_Subject04/20200324T124609_ft_topoplotER_output';
ft_topoplotER(cfg);

%%

cfg = [];
cfg.xlim = [0.3 0.5];
cfg.zlim = 'maxmin';
cfg.colorbar = 'yes';
cfg.layout = 'CTF151_helmet.mat';
cfg.inputfile = { 'reproduce_Subject04/20200324T124522_ft_timelockanalysis_output_timelock.mat' };
cfg.outputfile = 'reproduce_Subject04/20200324T124613_ft_topoplotER_output';
ft_topoplotER(cfg);

%%

cfg = [];
cfg.xlim = [0.3 0.5];
cfg.zlim = 'maxabs';
cfg.colorbar = 'yes';
cfg.layout = 'CTF151_helmet.mat';
cfg.inputfile = { 'reproduce_Subject04/20200324T124558_ft_combineplanar_output_data.mat' };
cfg.outputfile = 'reproduce_Subject04/20200324T124619_ft_topoplotER_output';
ft_topoplotER(cfg);

%%

cfg = [];
cfg.xlim = [0.3 0.5];
cfg.zlim = 'maxabs';
cfg.colorbar = 'yes';
cfg.layout = 'CTF151_helmet.mat';
cfg.inputfile = { 'reproduce_Subject04/20200324T124600_ft_combineplanar_output_data.mat' };
cfg.outputfile = 'reproduce_Subject04/20200324T124625_ft_topoplotER_output';
ft_topoplotER(cfg);

%%

cfg = [];
cfg.xlim = [0.3 0.5];
cfg.zlim = 'maxabs';
cfg.colorbar = 'yes';
cfg.layout = 'CTF151_helmet.mat';
cfg.inputfile = { 'reproduce_Subject04/20200324T124602_ft_combineplanar_output_data.mat' };
cfg.outputfile = 'reproduce_Subject04/20200324T124631_ft_topoplotER_output';
ft_topoplotER(cfg);


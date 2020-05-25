%%

cfg = [];
cfg.dataset = '../rawdata/Subject01.ds';
cfg.trialfun = 'ft_trialfun_general';
cfg.trialdef.eventtype = 'backpanel trigger';
cfg.trialdef.eventvalue = [3 5 9];
cfg.trialdef.prestim = 1;
cfg.trialdef.poststim = 2;
cfg = ft_definetrial(cfg);

%%

cfg = [];
cfg.dataset = '../rawdata/Subject01.ds';
cfg.trialfun = 'ft_trialfun_general';
cfg.trialdef.eventtype = 'backpanel trigger';
cfg.trialdef.eventvalue = [3 5 9];
cfg.trialdef.prestim = 1;
cfg.trialdef.poststim = 2;
cfg.datafile = '../rawdata/Subject01.ds/Subject01.meg4';
cfg.headerfile = '../rawdata/Subject01.ds/Subject01.res4';
cfg.dataformat = 'ctf_meg4';
cfg.headerformat = 'ctf_res4';
cfg.trl = 'reproduce_Subject01/20200324T121352_ft_preprocessing_largecfginput_trl.mat';
cfg.outputfile = { 'reproduce_Subject01/20200324T121352_ft_preprocessing_output_data.mat' };
cfg.channel = {
 'MEG', 'EOG'
};
cfg.continuous = 'yes';
ft_preprocessing(cfg);

%%

cfg = [];
cfg.artfctdef.visual.artifact = [8101 9000;
68401 69300;
99001 99900;
108901 109800;
130501 131400;
228601 229500;
8101 9000;
49501 50400;
58501 59400;
61201 62100;
135001 135900;
135901 136800;
137701 138600;
138601 139500;
140401 141300;
146701 147600;
147601 148500;
148501 149400;
162001 162900;
169201 170100;
171001 171900;
180001 180900;
180901 181800;
199801 200700;
202501 203400;
205201 206100;
207001 207900;
222301 223200;
223201 224100;
224101 225000;
228601 229500];
cfg.inputfile = { 'reproduce_Subject01/20200324T121352_ft_preprocessing_output_data.mat' };
cfg.outputfile = { 'reproduce_Subject01/20200324T121401_ft_rejectartifact_output_data.mat' };
ft_rejectartifact(cfg);

%%

cfg = [];
cfg.trials = logical([true false true false false false true false false false false false true false true true false false false false false false false false true true false false true false false false false true true true false false false false false false true true true false true false false true false false false false true false false false true false false true false true true true false false false false true false false true true false false false false false false true false true true false false false true false false true false false false false false false true true false true false false true false false false true false false true true false false true false false true false false false true false true false true false false false false true false true false false false false true false true false false true false true false true false false true false false true false true true false false false true false false false false false false false false false false true true true false false false false false false false true false true true false false false true false true true false false false false false false false false true true true false false false false false false true true false true true true false false false true false false true false true false false false true false false false false]).';
cfg.inputfile = { 'reproduce_Subject01/20200324T121401_ft_rejectartifact_output_data.mat' };
cfg.outputfile = { 'reproduce_Subject01/20200324T121408_ft_timelockanalysis_output_timelock.mat' };
ft_timelockanalysis(cfg);

%%

cfg = [];
cfg.trials = logical([false false false true false false false true true false true false false false false false true true true false true false false true false false true true false false true false false false false false true false true true true false false false false true false false true false false true true false false false true true false false true false false false false false true true false true false false false false false true true true true false true false false false false true false false false false false false false true false true false true false false true false true false false true false true false true false false false true true false true true false true false false false false false true false false false true true false true false true true false false false true false false false false true false false false true true false true true false false false false false false true false false false true true true true true true false true false false false true false false false true false true false false false false true false true false false false false true true true true false true true false false false false true false true true false true false false true false false false false true true false false true false false false true true false false false true false false]).';
cfg.inputfile = { 'reproduce_Subject01/20200324T121401_ft_rejectartifact_output_data.mat' };
cfg.outputfile = { 'reproduce_Subject01/20200324T121412_ft_timelockanalysis_output_timelock.mat' };
ft_timelockanalysis(cfg);

%%

cfg = [];
cfg.trials = logical([false true false false true true false false false true false true false true false false false false false true false true true false false false false false false true false true true false false false false true false false false true false false false false false true false false true false false true false true false false false true false false true false false false false false true false false true true false false false false false false true false false true false false false true true false true true false true false true false true false false false false false false true false false true false false false true false false false false false false false false false true true false true false false false true true false false false false false false false true true false false false true true false false false true false false false false false false false true false false true true false false true true false false false false false false true false false false false false true true true false true false false true false false false true false false true false false false false false false true false false true false false false false true false false true false false false false false false false true false false false true false false true false false false true false true false true true]).';
cfg.inputfile = { 'reproduce_Subject01/20200324T121401_ft_rejectartifact_output_data.mat' };
cfg.outputfile = { 'reproduce_Subject01/20200324T121415_ft_timelockanalysis_output_timelock.mat' };
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
 'reproduce_Subject01/20200324T121412_ft_timelockanalysis_output_timelock.mat', 'reproduce_Subject01/20200324T121415_ft_timelockanalysis_output_timelock.mat', 'reproduce_Subject01/20200324T121408_ft_timelockanalysis_output_timelock.mat'
};
cfg.outputfile = 'reproduce_Subject01/20200324T121425_ft_multiplotER_output';
ft_multiplotER(cfg);

%%

cfg = [];
cfg.feedback = 'yes';
cfg.method = 'template';
cfg.neighbours = 'reproduce_Subject01/20200324T121445_ft_megplanar_largecfginput_neighbours.mat';
cfg.planarmethod = 'sincos';
cfg.inputfile = { 'reproduce_Subject01/20200324T121408_ft_timelockanalysis_output_timelock.mat' };
cfg.outputfile = { 'reproduce_Subject01/20200324T121445_ft_megplanar_output_data.mat' };
ft_megplanar(cfg);

%%

cfg = [];
cfg.feedback = 'yes';
cfg.method = 'template';
cfg.neighbours = 'reproduce_Subject01/20200324T121445_ft_megplanar_largecfginput_neighbours.mat';
cfg.planarmethod = 'sincos';
cfg.inputfile = { 'reproduce_Subject01/20200324T121412_ft_timelockanalysis_output_timelock.mat' };
cfg.outputfile = { 'reproduce_Subject01/20200324T121447_ft_megplanar_output_data.mat' };
ft_megplanar(cfg);

%%

cfg = [];
cfg.feedback = 'yes';
cfg.method = 'template';
cfg.neighbours = 'reproduce_Subject01/20200324T121445_ft_megplanar_largecfginput_neighbours.mat';
cfg.planarmethod = 'sincos';
cfg.inputfile = { 'reproduce_Subject01/20200324T121415_ft_timelockanalysis_output_timelock.mat' };
cfg.outputfile = { 'reproduce_Subject01/20200324T121450_ft_megplanar_output_data.mat' };
ft_megplanar(cfg);

%%

cfg = [];
cfg.inputfile = { 'reproduce_Subject01/20200324T121445_ft_megplanar_output_data.mat' };
cfg.outputfile = { 'reproduce_Subject01/20200324T121453_ft_combineplanar_output_data.mat' };
ft_combineplanar(cfg);

%%

cfg = [];
cfg.inputfile = { 'reproduce_Subject01/20200324T121447_ft_megplanar_output_data.mat' };
cfg.outputfile = { 'reproduce_Subject01/20200324T121455_ft_combineplanar_output_data.mat' };
ft_combineplanar(cfg);

%%

cfg = [];
cfg.inputfile = { 'reproduce_Subject01/20200324T121450_ft_megplanar_output_data.mat' };
cfg.outputfile = { 'reproduce_Subject01/20200324T121457_ft_combineplanar_output_data.mat' };
ft_combineplanar(cfg);

%%

cfg = [];
cfg.xlim = [0.3 0.5];
cfg.zlim = 'maxmin';
cfg.colorbar = 'yes';
cfg.layout = 'CTF151_helmet.mat';
cfg.inputfile = { 'reproduce_Subject01/20200324T121408_ft_timelockanalysis_output_timelock.mat' };
cfg.outputfile = 'reproduce_Subject01/20200324T121502_ft_topoplotER_output';
ft_topoplotER(cfg);

%%

cfg = [];
cfg.xlim = [0.3 0.5];
cfg.zlim = 'maxmin';
cfg.colorbar = 'yes';
cfg.layout = 'CTF151_helmet.mat';
cfg.inputfile = { 'reproduce_Subject01/20200324T121412_ft_timelockanalysis_output_timelock.mat' };
cfg.outputfile = 'reproduce_Subject01/20200324T121508_ft_topoplotER_output';
ft_topoplotER(cfg);

%%

cfg = [];
cfg.xlim = [0.3 0.5];
cfg.zlim = 'maxmin';
cfg.colorbar = 'yes';
cfg.layout = 'CTF151_helmet.mat';
cfg.inputfile = { 'reproduce_Subject01/20200324T121415_ft_timelockanalysis_output_timelock.mat' };
cfg.outputfile = 'reproduce_Subject01/20200324T121513_ft_topoplotER_output';
ft_topoplotER(cfg);

%%

cfg = [];
cfg.xlim = [0.3 0.5];
cfg.zlim = 'maxabs';
cfg.colorbar = 'yes';
cfg.layout = 'CTF151_helmet.mat';
cfg.inputfile = { 'reproduce_Subject01/20200324T121453_ft_combineplanar_output_data.mat' };
cfg.outputfile = 'reproduce_Subject01/20200324T121518_ft_topoplotER_output';
ft_topoplotER(cfg);

%%

cfg = [];
cfg.xlim = [0.3 0.5];
cfg.zlim = 'maxabs';
cfg.colorbar = 'yes';
cfg.layout = 'CTF151_helmet.mat';
cfg.inputfile = { 'reproduce_Subject01/20200324T121455_ft_combineplanar_output_data.mat' };
cfg.outputfile = 'reproduce_Subject01/20200324T121525_ft_topoplotER_output';
ft_topoplotER(cfg);

%%

cfg = [];
cfg.xlim = [0.3 0.5];
cfg.zlim = 'maxabs';
cfg.colorbar = 'yes';
cfg.layout = 'CTF151_helmet.mat';
cfg.inputfile = { 'reproduce_Subject01/20200324T121457_ft_combineplanar_output_data.mat' };
cfg.outputfile = 'reproduce_Subject01/20200324T121533_ft_topoplotER_output';
ft_topoplotER(cfg);


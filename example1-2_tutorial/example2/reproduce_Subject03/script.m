%%

cfg = [];
cfg.dataset = '../rawdata/Subject03.ds';
cfg.trialfun = 'ft_trialfun_general';
cfg.trialdef.eventtype = 'backpanel trigger';
cfg.trialdef.eventvalue = [3 5 9];
cfg.trialdef.prestim = 1;
cfg.trialdef.poststim = 2;
cfg = ft_definetrial(cfg);

%%

cfg = [];
cfg.dataset = '../rawdata/Subject03.ds';
cfg.trialfun = 'ft_trialfun_general';
cfg.trialdef.eventtype = 'backpanel trigger';
cfg.trialdef.eventvalue = [3 5 9];
cfg.trialdef.prestim = 1;
cfg.trialdef.poststim = 2;
cfg.datafile = '../rawdata/Subject03.ds/Subject03.meg4';
cfg.headerfile = '../rawdata/Subject03.ds/Subject03.res4';
cfg.dataformat = 'ctf_meg4';
cfg.headerformat = 'ctf_res4';
cfg.trl = 'reproduce_Subject03/20200324T124303_ft_preprocessing_largecfginput_trl.mat';
cfg.outputfile = { 'reproduce_Subject03/20200324T124303_ft_preprocessing_output_data.mat' };
cfg.channel = {
 'MEG', 'EOG'
};
cfg.continuous = 'yes';
ft_preprocessing(cfg);

%%

cfg = [];
cfg.artfctdef.visual.artifact = [901 1800;
26101 27000;
40501 41400;
41401 42300;
42301 43200;
50401 51300;
73801 74700;
81001 81900;
84601 85500;
901 1800;
7201 8100;
38701 39600;
39601 40500;
40501 41400;
41401 42300;
50401 51300;
52201 53100;
59401 60300;
74701 75600;
76501 77400;
77401 78300;
79201 80100;
81001 81900;
81901 82800;
84601 85500;
85501 86400;
99901 100800;
109801 110700;
145801 146700;
155701 156600;
160201 161100;
163801 164700;
165601 166500;
184501 185400;
207001 207900];
cfg.inputfile = { 'reproduce_Subject03/20200324T124303_ft_preprocessing_output_data.mat' };
cfg.outputfile = { 'reproduce_Subject03/20200324T124311_ft_rejectartifact_output_data.mat' };
ft_rejectartifact(cfg);

%%

cfg = [];
cfg.trials = logical([false true false false false true false false false false false true false true true false false false false false false false false true true false true false false false false true true true false false false false false true false false true false false false false false false false true false false true false false true true true false false false false true true false false true true false false false false false false false true false false false false false false true true false true true false true false false false true false false true false false false true false false true false false false true false true false true false false false false true false true false true false false false true true false false false false true false false false true false false true false false true false false true false false false true true false false false true false false false false true false false false false false true true true false false false true false false false false true false true true false false false true false true true false false false false false false false false false false false true true true false false false false false false true true false true true true false false true false true false true false false true true false true false false false true false false false false]).';
cfg.inputfile = { 'reproduce_Subject03/20200324T124311_ft_rejectartifact_output_data.mat' };
cfg.outputfile = { 'reproduce_Subject03/20200324T124318_ft_timelockanalysis_output_timelock.mat' };
ft_timelockanalysis(cfg);

%%

cfg = [];
cfg.trials = logical([false false true false false false false true false true false false false false false true true true false true false false true false false true false false true false false false false false true false true true true false false true false false true false false false true true false false true false false false false false false true true false true false false false false false false true true false true false false false false false true false true false true false false true false false false false true false true false true false false false true true false true true false true false false false false false true false false false true true false true false true false true false false false false false true false false false false false false false true false false false false false true true false true true false false false false true false false false true true true false true false true false true false false false true false false false false false true false false false false false true false true false false false false true true true true false false true false true false false false false false true false true true false true false false true false false false false true false false false true false false true false false false false true true false false false true false false]).';
cfg.inputfile = { 'reproduce_Subject03/20200324T124311_ft_rejectartifact_output_data.mat' };
cfg.outputfile = { 'reproduce_Subject03/20200324T124321_ft_timelockanalysis_output_timelock.mat' };
ft_timelockanalysis(cfg);

%%

cfg = [];
cfg.trials = logical([true false false true true false true false true false true false true false false false false false true false true true false false false false false true false true true false false false false true false false false false true false false true false true true true false false false true false false true true false false false false false true false false false true true false false false false true false true true true false true false true false true false false false false false false true false false true false false false true false true false false false false false false false true true false true false false false true true false false false false false false false false true true false false true false true true false true true true false false true false true true false false false false false false true false false true false true false true false false false false false true false true false false false false false true true false true true false true false true false false false true false false true false false false false false false true true false true false true true false false false false true false false true false false false false false false false true false false true false false false true false false false true false false false true false true false true true]).';
cfg.inputfile = { 'reproduce_Subject03/20200324T124311_ft_rejectartifact_output_data.mat' };
cfg.outputfile = { 'reproduce_Subject03/20200324T124324_ft_timelockanalysis_output_timelock.mat' };
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
 'reproduce_Subject03/20200324T124321_ft_timelockanalysis_output_timelock.mat', 'reproduce_Subject03/20200324T124324_ft_timelockanalysis_output_timelock.mat', 'reproduce_Subject03/20200324T124318_ft_timelockanalysis_output_timelock.mat'
};
cfg.outputfile = 'reproduce_Subject03/20200324T124334_ft_multiplotER_output';
ft_multiplotER(cfg);

%%

cfg = [];
cfg.feedback = 'yes';
cfg.method = 'template';
cfg.neighbours = 'reproduce_Subject03/20200324T124353_ft_megplanar_largecfginput_neighbours.mat';
cfg.planarmethod = 'sincos';
cfg.inputfile = { 'reproduce_Subject03/20200324T124318_ft_timelockanalysis_output_timelock.mat' };
cfg.outputfile = { 'reproduce_Subject03/20200324T124353_ft_megplanar_output_data.mat' };
ft_megplanar(cfg);

%%

cfg = [];
cfg.feedback = 'yes';
cfg.method = 'template';
cfg.neighbours = 'reproduce_Subject03/20200324T124353_ft_megplanar_largecfginput_neighbours.mat';
cfg.planarmethod = 'sincos';
cfg.inputfile = { 'reproduce_Subject03/20200324T124321_ft_timelockanalysis_output_timelock.mat' };
cfg.outputfile = { 'reproduce_Subject03/20200324T124356_ft_megplanar_output_data.mat' };
ft_megplanar(cfg);

%%

cfg = [];
cfg.feedback = 'yes';
cfg.method = 'template';
cfg.neighbours = 'reproduce_Subject03/20200324T124353_ft_megplanar_largecfginput_neighbours.mat';
cfg.planarmethod = 'sincos';
cfg.inputfile = { 'reproduce_Subject03/20200324T124324_ft_timelockanalysis_output_timelock.mat' };
cfg.outputfile = { 'reproduce_Subject03/20200324T124358_ft_megplanar_output_data.mat' };
ft_megplanar(cfg);

%%

cfg = [];
cfg.inputfile = { 'reproduce_Subject03/20200324T124353_ft_megplanar_output_data.mat' };
cfg.outputfile = { 'reproduce_Subject03/20200324T124401_ft_combineplanar_output_data.mat' };
ft_combineplanar(cfg);

%%

cfg = [];
cfg.inputfile = { 'reproduce_Subject03/20200324T124356_ft_megplanar_output_data.mat' };
cfg.outputfile = { 'reproduce_Subject03/20200324T124403_ft_combineplanar_output_data.mat' };
ft_combineplanar(cfg);

%%

cfg = [];
cfg.inputfile = { 'reproduce_Subject03/20200324T124358_ft_megplanar_output_data.mat' };
cfg.outputfile = { 'reproduce_Subject03/20200324T124405_ft_combineplanar_output_data.mat' };
ft_combineplanar(cfg);

%%

cfg = [];
cfg.xlim = [0.3 0.5];
cfg.zlim = 'maxmin';
cfg.colorbar = 'yes';
cfg.layout = 'CTF151_helmet.mat';
cfg.inputfile = { 'reproduce_Subject03/20200324T124318_ft_timelockanalysis_output_timelock.mat' };
cfg.outputfile = 'reproduce_Subject03/20200324T124408_ft_topoplotER_output';
ft_topoplotER(cfg);

%%

cfg = [];
cfg.xlim = [0.3 0.5];
cfg.zlim = 'maxmin';
cfg.colorbar = 'yes';
cfg.layout = 'CTF151_helmet.mat';
cfg.inputfile = { 'reproduce_Subject03/20200324T124321_ft_timelockanalysis_output_timelock.mat' };
cfg.outputfile = 'reproduce_Subject03/20200324T124412_ft_topoplotER_output';
ft_topoplotER(cfg);

%%

cfg = [];
cfg.xlim = [0.3 0.5];
cfg.zlim = 'maxmin';
cfg.colorbar = 'yes';
cfg.layout = 'CTF151_helmet.mat';
cfg.inputfile = { 'reproduce_Subject03/20200324T124324_ft_timelockanalysis_output_timelock.mat' };
cfg.outputfile = 'reproduce_Subject03/20200324T124416_ft_topoplotER_output';
ft_topoplotER(cfg);

%%

cfg = [];
cfg.xlim = [0.3 0.5];
cfg.zlim = 'maxabs';
cfg.colorbar = 'yes';
cfg.layout = 'CTF151_helmet.mat';
cfg.inputfile = { 'reproduce_Subject03/20200324T124401_ft_combineplanar_output_data.mat' };
cfg.outputfile = 'reproduce_Subject03/20200324T124421_ft_topoplotER_output';
ft_topoplotER(cfg);

%%

cfg = [];
cfg.xlim = [0.3 0.5];
cfg.zlim = 'maxabs';
cfg.colorbar = 'yes';
cfg.layout = 'CTF151_helmet.mat';
cfg.inputfile = { 'reproduce_Subject03/20200324T124403_ft_combineplanar_output_data.mat' };
cfg.outputfile = 'reproduce_Subject03/20200324T124427_ft_topoplotER_output';
ft_topoplotER(cfg);

%%

cfg = [];
cfg.xlim = [0.3 0.5];
cfg.zlim = 'maxabs';
cfg.colorbar = 'yes';
cfg.layout = 'CTF151_helmet.mat';
cfg.inputfile = { 'reproduce_Subject03/20200324T124405_ft_combineplanar_output_data.mat' };
cfg.outputfile = 'reproduce_Subject03/20200324T124433_ft_topoplotER_output';
ft_topoplotER(cfg);


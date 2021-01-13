%%

cfg = [];
cfg.dataset = '../rawdata/Subject01.ds';
cfg.trialfun = 'ft_trialfun_general';
cfg.trialdef.eventtype = 'backpanel trigger';
cfg.trialdef.eventvalue = 3;
cfg.trialdef.prestim = 1;
cfg.trialdef.poststim = 2;

cfg.tracktimeinfo = 'yes';
cfg.trackmeminfo = 'yes';
cfg = ft_definetrial(cfg);

%%

cfg = [];
cfg.dataset = '../rawdata/Subject01.ds';
cfg.trialfun = 'ft_trialfun_general';
cfg.trialdef.eventtype = 'backpanel trigger';
cfg.trialdef.eventvalue = 3;
cfg.trialdef.prestim = 1;
cfg.trialdef.poststim = 2;

cfg.tracktimeinfo = 'yes';
cfg.trackmeminfo = 'yes';
cfg.datafile = '../rawdata/Subject01.ds/Subject01.meg4';
cfg.headerfile = '../rawdata/Subject01.ds/Subject01.res4';
cfg.dataformat = 'ctf_meg4';
cfg.headerformat = 'ctf_res4';
cfg.representation = 'numeric';
cfg.trl = 'reproduce/20210112T113326_ft_preprocessing_largecfginput_trl.mat';
cfg.outputfile = { 'reproduce/20210112T113326_ft_preprocessing_output_data.mat' };
cfg.channel = { 'MEG', 'EOG' };
cfg.continuous = 'yes';
ft_preprocessing(cfg);

%%

cfg = [];
cfg.tracktimeinfo = 'yes';
cfg.trackmeminfo = 'yes';
cfg.inputfile = { 'reproduce/20210112T113326_ft_preprocessing_output_data.mat' };
cfg.outputfile = { 'reproduce/20210112T113332_ft_timelockanalysis_output_timelock.mat' };
ft_timelockanalysis(cfg);

%%

% a new input variable is entering the pipeline here: 20210112T113333_ft_topoplotER_input_varargin_1.mat

cfg = [];
cfg.xlim = [0.3 0.5];
cfg.layout = 'CTF151_helmet.mat';
cfg.tracktimeinfo = 'yes';
cfg.trackmeminfo = 'yes';
cfg.inputfile = { 'reproduce/20210112T113333_ft_topoplotER_input_varargin_1.mat' };
cfg.outputfile = 'reproduce/20210112T113338_ft_topoplotER_output';
figure; 
ft_topoplotER(cfg);


%%

cfg = [];
cfg.dataset = '../rawdata/Subject01.ds';
cfg.trialfun = 'ft_trialfun_general';
cfg.trialdef.eventtype = 'backpanel trigger';
cfg.trialdef.eventvalue = 3;
cfg.trialdef.prestim = 1;
cfg.trialdef.poststim = 2;
cfg = ft_definetrial(cfg);

%%

cfg = [];
cfg.dataset = '../rawdata/Subject01.ds';
cfg.trialfun = 'ft_trialfun_general';
cfg.trialdef.eventtype = 'backpanel trigger';
cfg.trialdef.eventvalue = 3;
cfg.trialdef.prestim = 1;
cfg.trialdef.poststim = 2;
cfg.datafile = '../rawdata/Subject01.ds/Subject01.meg4';
cfg.headerfile = '../rawdata/Subject01.ds/Subject01.res4';
cfg.dataformat = 'ctf_meg4';
cfg.headerformat = 'ctf_res4';
cfg.trl = 'reproduce/20200324T110323_ft_preprocessing_largecfginput_trl.mat';
cfg.outputfile = { 'reproduce/20200324T110323_ft_preprocessing_output_data.mat' };
cfg.channel = {
 'MEG', 'EOG'
};
cfg.continuous = 'yes';
ft_preprocessing(cfg);

%%

cfg = [];
cfg.inputfile = { 'reproduce/20200324T110323_ft_preprocessing_output_data.mat' };
cfg.outputfile = { 'reproduce/20200324T110329_ft_timelockanalysis_output_timelock.mat' };
ft_timelockanalysis(cfg);

%%

% a new input variable is entering the pipeline here: ft_topoplotER_20200324T110330_input_varargin_1.mat

cfg = [];
cfg.xlim = [0.3 0.5];
cfg.layout = 'CTF151_helmet.mat';
cfg.inputfile = { 'reproduce/ft_topoplotER_20200324T110330_input_varargin_1.mat' };
cfg.outputfile = 'reproduce/20200324T110338_ft_topoplotER_output';
ft_topoplotER(cfg);


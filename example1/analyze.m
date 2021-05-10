clear
close all

global ft_default
ft_default = [];
ft_default.checksize = inf;

% enable reproducescript
ft_default.reproducescript = 'reproduce/';

data_dir = '../rawdata/';
results_dir = 'analysis/';
mkdir(results_dir)

% extract epochs
cfg = [];
cfg.dataset = fullfile(data_dir, 'Subject01.ds');
cfg.trialfun = 'ft_trialfun_general';
cfg.trialdef.eventtype = 'backpanel trigger';
cfg.trialdef.eventvalue = 3;
cfg.trialdef.prestim = 1;
cfg.trialdef.poststim = 2;
cfg = ft_definetrial(cfg);

% loading data and basic preprocessing
cfg.channel = {'MEG' 'EOG'};
cfg.continuous = 'yes';
dataFIC = ft_preprocessing(cfg);

% time-lock analysis
cfg = [];
avgFIC = ft_timelockanalysis(cfg, dataFIC);

% let's make a manual change to the data that is not caputured in the provenance
avgFIC.avg = avgFIC.avg * 1e15; % convert from T to fT

% save time-locked data
save(fullfile(results_dir, 'timelock.mat'), 'avgFIC')

% plot the results
cfg = [];
cfg.xlim = [0.3 0.5];
cfg.layout = 'CTF151_helmet.mat';
ft_topoplotER(cfg, avgFIC);

% save the figure
savefig(gcf, fullfile(results_dir, 'topoplot'))

% disable reproducescript
ft_default.reproducescript = []; 

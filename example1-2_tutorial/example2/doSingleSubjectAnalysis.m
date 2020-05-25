function doSingleSubjectAnalysis(subj)

% the details of each subject are in separate files
% details_Subject01.m
% details_Subject02.m
% details_Subject03.m
% details_Subject04.m

fprintf('evaluating single subject analysis for %s\n', subj);
eval(['details_' subj]);

% this is for artifact detection
interactive = false;

%%

cfg = [];
cfg.dataset = fullfile(datadir, filename);
cfg.trialfun = 'ft_trialfun_general';
cfg.trialdef.eventtype = 'backpanel trigger';
cfg.trialdef.eventvalue = [triggerFIC triggerIC triggerFC];
cfg.trialdef.prestim = 1;
cfg.trialdef.poststim = 2;
cfg = ft_definetrial(cfg);

% the EOG channel has a different name in the different datasets
cfg.channel = {'MEG' eogchannel};
cfg.continuous = 'yes';
data = ft_preprocessing(cfg);

%%

if interactive
  % visually identify the artifacts
  
  cfg = [];
  cfg.channel = eogchannel;
  cfg.method = 'channel';
  dummy1 = ft_rejectvisual(cfg, data);
  
  cfg = [];
  cfg.channel = 'MEG';
  cfg.method = 'summary';
  dummy2 = ft_rejectvisual(cfg, data);
  
  % combine the artifacts that have been detected
  artifact = [
    dummy1.cfg.artfctdef.channel.artifact
    dummy2.cfg.artfctdef.summary.artifact
    ];
  
  % print them and copy them to the subject details file
  disp(artifact);
  
  % use the MATLAB debugger to wait on this line
  disp('please copy these artifacts to the subject details file');
  keyboard
end

% remove the artifacts that were previously detected
cfg = [];
cfg.artfctdef.visual.artifact = artifact;
data_clean = ft_rejectartifact(cfg, data);

%%

cfg = [];
cfg.trials = data_clean.trialinfo==triggerFIC;
avgFIC = ft_timelockanalysis(cfg, data_clean);

cfg.trials = data_clean.trialinfo==triggerFC;
avgFC = ft_timelockanalysis(cfg, data_clean);

cfg.trials = data_clean.trialinfo==triggerIC;
avgIC = ft_timelockanalysis(cfg, data_clean);

%%

cfg = [];
cfg.showlabels = 'no';
cfg.fontsize = 6;
cfg.layout = 'CTF151_helmet.mat';
cfg.baseline = [-0.2 0];
cfg.xlim = [-0.2 1.0];
cfg.ylim = [-3e-13 3e-13];
ft_multiplotER(cfg, avgFC, avgIC, avgFIC);

%%

cfg = [];
cfg.feedback = 'yes';
cfg.method = 'template';
cfg.neighbours = ft_prepare_neighbours(cfg, avgFIC);
cfg.planarmethod = 'sincos';
avgFICplanar = ft_megplanar(cfg, avgFIC);
avgFCplanar = ft_megplanar(cfg, avgFC);
avgICplanar = ft_megplanar(cfg, avgIC);

%%

cfg = [];
avgFICplanarComb = ft_combineplanar(cfg, avgFICplanar);
avgFCplanarComb  = ft_combineplanar(cfg, avgFCplanar);
avgICplanarComb  = ft_combineplanar(cfg, avgICplanar);

%%

cfg = [];
cfg.xlim = [0.3 0.5];
cfg.zlim = 'maxmin';
cfg.colorbar = 'yes';
cfg.layout = 'CTF151_helmet.mat';
subplot(2,3,1); ft_topoplotER(cfg, avgFIC)
subplot(2,3,2); ft_topoplotER(cfg, avgFC)
subplot(2,3,3); ft_topoplotER(cfg, avgIC)

cfg.zlim = 'maxabs';
cfg.layout = 'CTF151_helmet.mat';
subplot(2,3,4); ft_topoplotER(cfg, avgFICplanarComb)
subplot(2,3,5); ft_topoplotER(cfg, avgFCplanarComb)
subplot(2,3,6); ft_topoplotER(cfg, avgICplanarComb)

%%

% save the results to disk
outputdir = ['result_' subj];
mkdir(outputdir)
save(fullfile(outputdir, 'avgFIC'), 'avgFIC');
save(fullfile(outputdir, 'avgFC'),  'avgFC');
save(fullfile(outputdir, 'avgIC'),  'avgIC');
save(fullfile(outputdir, 'avgFICplanarComb'), 'avgFICplanarComb');
save(fullfile(outputdir, 'avgFCplanarComb'),  'avgFCplanarComb');
save(fullfile(outputdir, 'avgICplanarComb'),  'avgICplanarComb');


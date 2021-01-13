function doGroupAnalysis(allsubj)

avgFIC = cell(size(allsubj));
avgFC  = cell(size(allsubj));
avgIC  = cell(size(allsubj));

% load the results from disk
for i=1:numel(allsubj)
  subj = allsubj{i};
  fprintf('loading data for subject %s\n', subj);
  
  inputdir = ['result_' subj];
  tmp = load(fullfile(inputdir, 'avgFIC')); avgFIC{i} = tmp.avgFIC;
  tmp = load(fullfile(inputdir, 'avgFC'));  avgFC{i}  = tmp.avgFC;
  tmp = load(fullfile(inputdir, 'avgIC'));  avgIC{i}  = tmp.avgIC;
  clear tmp
end

%%

cfg = [];
cfg.showlabels = 'no';
cfg.fontsize = 6;
cfg.layout = 'CTF151_helmet.mat';
cfg.baseline = [-0.2 0];
cfg.xlim = [-0.2 1.0];
cfg.ylim = [-3e-13 3e-13];

figure
ft_multiplotER(cfg, avgFIC{:});
title('Fully incongruent condition');

figure
ft_multiplotER(cfg, avgFC{:});
title('Fully congruent condition');

figure
ft_multiplotER(cfg, avgIC{:});
title('Initially congruent condition');

%%

avgFICvsFC = cell(size(allsubj));
for i=1:numel(allsubj)
  cfg = [];
  cfg.parameter = 'avg';
  cfg.operation = 'x1-x2';
  avgFICvsFC{i} = ft_math(cfg, avgFIC{i}, avgFC{i});
end

cfg = [];
cfg.showlabels = 'no';
cfg.fontsize = 6;
cfg.layout = 'CTF151_helmet.mat';
cfg.baseline = [-0.2 0];
cfg.xlim = [-0.2 1.0];
cfg.ylim = [-3e-13 3e-13];
ft_multiplotER(cfg, avgFICvsFC{:});
title('FIC minus FC');

%%

% let's make a manual change to the data that is not caputured in the provenance

for i=1:numel(allsubj)
  avgFIC{i}.avg = avgFIC{i}.avg * 1e15; % convert from T to fT
  avgFC{i}.avg  = avgFC{i}.avg  * 1e15; % convert from T to fT
  avgIC{i}.avg  = avgIC{i}.avg  * 1e15; % convert from T to fT
end


%%

cfg = [];
grandavgFIC = ft_timelockgrandaverage(cfg, avgFIC{:});
grandavgFC  = ft_timelockgrandaverage(cfg, avgFC{:});
grandavgIC  = ft_timelockgrandaverage(cfg, avgIC{:});

%%

% save the results to disk
outputdir = 'result_Group';
mkdir(outputdir)
save(fullfile(outputdir, 'grandavgFIC'), 'grandavgFIC');
save(fullfile(outputdir, 'grandavgFC'),  'grandavgFC');
save(fullfile(outputdir, 'grandavgIC'),  'grandavgIC');


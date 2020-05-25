clear
close all

% initialize ft_default variable
global ft_default
ft_default = [];
ft_default.checksize = inf;

subjlist = {
  'Subject01'
  'Subject02'
  'Subject03'
  'Subject04'
  };

%% Loop single-subject analysis over subjects
for i=1:numel(subjlist)
  subj = subjlist{i};
  % initiate reproducescript
  ft_default.reproducescript = ['reproduce_' subj];
  doSingleSubjectAnalysis(subj);
  ft_default.reproducescript = []; % disable
end

%% Group analysis
% initiate reproducescript
ft_default.reproducescript = 'reproduce_Group';
doGroupAnalysis(subjlist);
ft_default.reproducescript = []; % disable

clear
close all

global ft_default
ft_default = [];
ft_default.checksize = inf;

%% Single subject analysis
datainfo;
for do_subject = 1:numel(all_subjects)
  reproduce_dir = [home_dir, sprintf('reproduce%02d/', do_subject)];
  
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % enable reproducescript
  ft_default.reproducescript = reproduce_dir;
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  
  % Create all relevant directories where all data and all figures will be
  % saved
  create_MEG_BIDS_data_structure
  
  % Go from raw MEG data to a time-frequency representation
  sensor_space_analysis
  
  % Go from raw MRI data to a volume conductor and a forward model
  mr_preprocessing
  
  % Extract fourier transforms and do beamformer source reconstructions
  source_space_analysis
  
  %%%%%%%%%%%%
  % plotting %
  %%%%%%%%%%%%
  % Plot all steps in the sensor space analysis
  plot_sensor_space
  
  % Plot all steps in the MR processing
  plot_processed_mr
  
  % Plot all steps in the source space analysis
  plot_source_space
  
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % disable reproducescript
  ft_default.reproducescript = [];
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
end

%% Group analysis
datainfo;
reproduce_dir = [home_dir, 'reproduce_group'];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% enable reproducescript
ft_default.reproducescript = reproduce_dir;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Do grand averages across subjects for both sensor and source spaces
grand_averages

% Do statistics on time-frequency representations and beamformer source
% reconstructions
statistics

% Plot grand averages in both the sensor and source spaces, with and
% without statistical masking
plot_grand_averages

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% disable reproducescript
ft_default.reproducescript = [];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

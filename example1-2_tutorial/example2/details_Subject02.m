filename = 'Subject02.ds';
datadir = '../rawdata';

eogchannel = 'EEG029'; % this differs from the rest

triggerFIC = 3;
triggerIC = 5;
triggerFC = 9;

artifact = [
  39601       40500
  48601       49500
  51301       52200
  71101       72000
  74701       75600
  14401       15300
  27001       27900
  30601       31500
  38701       39600
  66601       67500
  67501       68400
  70201       71100
  98101       99000
  169201      170100
  186301      187200
  207901      208800
  209701      210600
  ];
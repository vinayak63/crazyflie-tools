function [d imFnames]=lcmlog_2015_04_02_04()
full_fname = 'lcmlog_2015_04_02_04.mat';
fname = '/Users/pflomacpro/crazyflie-tools/logs/cf2/wind0402/lcmlog_2015_04_02_04.mat';
if (exist(full_fname,'file'))
    filename = full_fname;
else
    filename = fname;
end
d = load(filename);

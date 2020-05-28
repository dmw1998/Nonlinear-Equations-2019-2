load biscetion.mat
T = table(data);
T(1:1,:);
filename = 'Data.xlsx';
writetable(T,filename,'Sheet',1,'Range','A1');

load Newton.mat
T = table(data);
T(1:1,:);
filename = 'Data.xlsx';
writetable(T,filename,'Sheet',1,'Range','G1');

load secant.mat
T = table(data);
T(1:1,:);
filename = 'Data.xlsx';
writetable(T,filename,'Sheet',1,'Range','M1');

load fixed_point.mat
T = table(data);
T(1:1,:);
filename = 'Data.xlsx';
writetable(T,filename,'Sheet',1,'Range','R1');

load Newton_for_3.mat
T = table(data);
T(1:1,:);
filename = 'Data.xlsx';
writetable(T,filename,'Sheet',1,'Range','V1');
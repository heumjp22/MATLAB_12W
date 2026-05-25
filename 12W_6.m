clear;
clc;

Device = ["D1";"D2";"D3";"D4";"D5";"D6";"D7";"D8";"D9";"D10";"D11";"D12"];
Power = [110;130;125;160;170;150;190;200;210;180;220;240];
Throughput = [42;50;48;61;65;57;72;75;79;69;83;91];

DeviceData = table(Device,Power,Throughput)
Power = DeviceData.Power;
Throughput = DeviceData.Throughput;
R = corrcoef(Power,Throughput);
rValue = R(1,2)

if rValue>=0.7
    disp('Strong correlation')
else
    disp('Weak correlation')
end

figure

scatter(Power,Throughput,80,'filled','LineWidth',1.5)

xlabel('Power')
ylabel('Throughput')

title('Power vs Throughput')

grid on

set(gca,'FontSize',12,'FontName','Times New Roman')

set(gca,'LineWidth',1.2)

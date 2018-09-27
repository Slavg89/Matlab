uczace_calosc=xlsread('uczace.xls')
uczacex=uczace_calosc(1:4,:)
uczacey=uczace_calosc(5,:)
test_calosc=xlsread('testowe.xls')
testx=test_calosc(1:4,:)


net=newff([0 1;0 1;0 1;0 1], [15,1],{'logsig','purelin'},'trainlm')
net.trainParam.show = 50;
net.trainParam.lr = 0.05;
net.trainParam.mc = 0.9;
net.trainParam.epochs = 50000;
net.trainParam.goal = 0.001;
net = init(net)
net=train(net,uczacex,uczacey)
netwyn=sim(net,testx)

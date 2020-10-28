clear, close all
clc

[a,b,c] = xlsread('data/irisVector.xlsx');

input = a(:,1:4)';
target = a(:,5:7)';

% train neural network using supervised learning
hiddenSize = 10;
net = patternnet(hiddenSize);
net.trainFcn = 'trainbr';
net.trainParam.epochs = 100000;
net = train(net, input, target);

% % test the neural network by putting the same input, store the output
% validationOutput = net(input);
% 
% % check performance by comparing real target and validationOutput
% 
% class_target = vec2ind(target);
% class_validationOutput = vec2ind(validationOutput);
% 
% performance = sum(class_target == class_validationOutput)/150;

% load network/myNeuralNetwork;
% simulation = myNeuralNetwork(input);
% class_target = vec2ind(target);
% class_simulatedOutput = vec2ind(simulation);
% performance = sum(class_target == class_simulatedOutput)/150;
% 
% plotconfusion(target,simulation);
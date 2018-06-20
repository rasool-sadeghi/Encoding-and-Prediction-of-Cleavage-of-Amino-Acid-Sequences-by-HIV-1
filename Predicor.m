function Pred = Predicor(AminoAcidString,Trained_Dataset_Base)
% Trained_Dataset_Base: 1 for Dataset746, 2 for Dataset1625, 3 for
% DatasetImpens and 4 for DatasetSchilling as The Learning Base of
% Prediction.
Input = MapDataset(AminoAcidString);    % Mapping Aminoacids to Their Equivalent Physiochemical Featur Values
%% Load Saved GP and Mapping (Based on The Best Achived Gen)

% Load Saved GP and saved Learnt SVM Structure
switch Trained_Dataset_Base
    
    case 1
        load Result_tr746
        load SVMStruct_Train746
    case 2
        load Result_tr1625
        load SVMStruct_Train1625.mat
    case 3
        load Result_trImpens
        load SVMStruct_TrainImpens.mat
    case 4
        load Result_trSchilling
        load SVMStruct_TrainSchilling.mat
end

gp = savedGP;   % GP Structure Is Saved in a Variable Named savedGP

genNumbers = size(gp.results.best.eval_individual,2);   % Extracting Number of Genes

% THe Following for_Loop Creates Variables Named x1,x2,x3,...,x152 and
% Filles Them with Columns 0 to 152 of The Mapped Features.
for j = 1:152

    eval(['x' num2str(j) ' = Input(' num2str(j) ');']);

end

NewData = zeros(1,genNumbers);     % Preallocating The New Mapped Matrix (Mapping Based on GP)

% The Following for_Loop Evaluates New Values Based on The Best Achived Gen
for k = 1: genNumbers

    NewData(1,k) = real(eval(gp.results.best.eval_individual{k}));

end

%% Runing SVM, Creating Plotrocs and Show Results
[Pred] = svmpredict(1, NewData, SVMStruct,'-q');
end
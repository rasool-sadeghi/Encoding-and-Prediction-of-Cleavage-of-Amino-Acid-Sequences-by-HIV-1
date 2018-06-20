# Encoding-and-Prediction-of-Cleavage-of-Amino-Acid-Sequences-by-HIV-1
This package implemented the method proposed by Fathi and Sadeghi for Prediction of Cleavage of Amino Acid Sequences by HIV-1.
To employ the proposed method on a new Dataset (a MAtrix of Amino Acid String), call below function in MATLAB:

Pred = Predicor(AminoAcidString,Trained_Dataset_Base)


In this function we have:
    Pred  is a vector of predicted values for input Dataset matrixe AminoAcidString.

    AminoAcidString is an input Dataset matrixe, each row is an one octamer string.

    Trained_Dataset_Base is the parameter that indicate the trained GP and SVM model which you want to use as predictor(Trained_Dataset_Base: 1 for Dataset746, 2 for Dataset1625, 3 for
    DatasetImpens and 4 for DatasetSchilling).

If You used the results of this package, please cite the paper of Fathi and Sadeghi Paper entitled as:
A. Fathi and R. Sadeghi, "A Genetic Programming Based Method for Encoding and Prediction of Cleavage of Amino Acid Sequences by HIV-1," 2018.


% Best Regards
% A. Fathi

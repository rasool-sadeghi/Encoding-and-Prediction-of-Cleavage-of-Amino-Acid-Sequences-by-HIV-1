This package implemented the method proposed by Fathi and Sadeghi for Prediction of Cleavage of Amino Acid Sequences by HIV-1.
To employ the proposed method on a new Amino Acid Octamer, call below function in MATLAB:

Pred = Predicor(AminoAcidString,Trained_Dataset_Base);


In this function we have:
    Pred  is a predicted values for input Octamer AminoAcidString.

    AminoAcidString is an input Octamer string.

    Trained_Dataset_Base is the parameter that indicate the trained GP and SVM model which you want to use as predictor(Trained_Dataset_Base: 1 for Dataset746, 2 for Dataset1625, 3 for
    DatasetImpens and 4 for DatasetSchilling).

If You will use the results of this package, please cite the paper of Fathi and Sadeghi Paper entitled as:
A. Fathi and R. Sadeghi, "A Genetic Programming Based Method for Encoding and Prediction of Cleavage of Amino Acid Sequences by HIV-1," submitted to: Applied Soft Computing Journal, 2018.


% Best Regards
% A. Fathi

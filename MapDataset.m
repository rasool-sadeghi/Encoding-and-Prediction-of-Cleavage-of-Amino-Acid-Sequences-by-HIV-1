function NewData=MapDataset(AminoAcidString)
% This Function Gets a Octamer as Input (a String)and gives a 1 by 152
% Vector as Output, in Which Each Aminoacid Mapped to its 20
% PhysionChemical Features

AminoAcidString = upper(AminoAcidString);           % Change Characters to Uppercase

load AminoAcidFeatures.mat                          % Loading Aminoacids Features Data

AmAcStrSize=size(AminoAcidString,2);                % Getting AminoAcids String Size (8)

FeaturesNum=size((AminoAcidFeatures.Values),2);     % Number of AminoAcids' Features.

NewData=zeros(1,AmAcStrSize*FeaturesNum);           % Creat New Dataset
   
   for j=1:AmAcStrSize
       
       AminoAcid=AminoAcidString(j);
       
       Index=(cell2mat(AminoAcidFeatures.Info.AminoAcids_Abre)==AminoAcid);     % Get AminoAcid Index in AminoAcids Feaures Data
       
       NewData(1,(j-1)*FeaturesNum+1:j*FeaturesNum)=AminoAcidFeatures.Values(Index,:);
       
   end


end
function Tlist = temperature_code(file)
% Returns the temperature coding table used in experiment file
%  The temperature around the protein is often recorded as the number given
%  by digits 2 and 3 in the Status variable. Tlist has two columns.  Column
%  1 hold the temperature codes from the Status variable, Column 2 holds
%  the corresponding temperatures.

  % Lists that have been used
  lists{1} = [0:2:12; 4,6,10,14,16,20,23]';
  lists{2} = [0 2 3 4 6 8 16; 4.4,9.88,12.12,14.89,18.89,21.4,31.7]';
  lists{3} = [[0:2:8,12]; 6.2,11.1,14.9,18.0, 21.3, 26.6]';

  files{1} = [
        "02162022/jA.txt"
    "02162022/lA.txt"
    "02162022/mA.txt"
    "02162022/nA.txt"
    "02172022/oA.txt"
    "02182022/qA.txt"
    "02182022/rA.txt"
    "04082022/YA.txt"
    "04082022/jA.txt"
    "07082022/cA.txt"
    "07082022/eA.txt"];

  files{2} = [
    "07182022/bA.txt"
    "07182022/cAB.txt"
    "07182022/dAE.txt"
    "07182022/eA.txt"
    "07182022/fA.txt"
    "20220718/cA.txt"
    "20220718/dA.txt"
    "20220718/eA.txt"
    "20220718/cAB.txt"
    "20220718/dAE.txt"
    "20220718/fA.txt"];

  files{3} = [
    "20230721/JA.txt"
    "20230721/JB.txt"
    "20230721/JC.txt"
    "20230721/JD.txt"
    "20230721/JE.txt"
    "20230721/JF.txt"
    "20230721/JG.txt"
    "20230721/KA.txt"
    "20230721/KB.txt"
    "20230721/KC.txt"
    "20230721/cA.txt"
    "20230721/cB.txt"
    "20230721/dA.txt"
    "20230721/eA.txt"
    "20230721/fA.txt"
    "20230721/fB.txt"
    "20230721/fC.txt"
    "20230721/fD.txt"
    "20230721/fE.txt"
    "20230721/fF.txt"
    "20230721/fG.txt"
    "20230721/gA.txt"
    "20230721/gB.txt"
    "20230721/hA.txt"
    "20230721/iA.txt"
    "20230722/lA.txt"
    "20230722/lB.txt"
    "20230722/lC.txt"
    "20230722/lD.txt"
    "20230722/lE.txt"
    "20230722/mA.txt"
    "20230722/mB.txt"
    "20230722/mC.txt"
    "20230722/mD.txt"
    "20230722/nA.txt"
    "20230722/nB.txt"
    "20230722/nC.txt"
    "20230722/nD.txt"
    "20230722/nE.txt"
    "20230722/nF.txt"
    "20230722/nG.txt"
    "20230722/oA.txt"
    "20230722/oB.txt"
    "20230722/oC.txt"
    "20230722/oD.txt"
    "20230722/oE.txt"
    "20230722/oF.txt"
    "20230722/pA.txt"
    "20230722/pB.txt"
    "20230722/pC.txt"
    "20230724/qA.txt"
    "20230724/rA.txt"
    "20230725/SA.txt"
    "20230725/SB.txt"
    "20230725/SC.txt"
    "20230725/SD.txt"
    "20230725/SE.txt"
    "20230725/SF.txt"
    "20230725/SG.txt"
    "20230725/TA.txt"
    "20230725/TB.txt"
    "20230725/TC.txt"
    "20230725/TD.txt"
    "20230725/TE.txt"
    "20230725/TF.txt"
    "20230725/TG.txt"
    "20230725/UA.txt"
    "20230725/UB.txt"
    "20230725/UC.txt"
    "20230725/UD.txt"
    "20230725/UE.txt"
    "20230725/UF.txt"
    "20230725/UG.txt"];
  
  Tlist = [];
  for k = 1:numel(files)
    if ismember(file,files{k})
      Tlist = lists{k};
      break;
    end
  end

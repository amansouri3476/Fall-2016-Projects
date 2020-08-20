function [vs,is,vx,resistor1,resistor2,resistor3] = projectQ2( text )
%%for the function we have to declare the outputs
clc
close all

%text=fopen('D:\university\Term 3\Electric Circuits Theory\mydata.txt','rt');
%here the elements properties will be read from a text file which is opened
%by the user and its directory will be given to fopen command
for branch_current_vector=1:6
  INPUT=textscan(text,'%s %s %f %f %f %f',1);
  if(branch_current_vector==1)
        vector=INPUT;
  end
  if(branch_current_vector~=1)
%here the combination of matrixes happens
        vector = [vector ; INPUT];
  end
end
%by the function string comparator we find out which input element we are
%dealing with
for m=1:6
if(strcmp(vector{m,1},'Vs'))  
    voltage_source=vector{m,5}; %assigning the value to variable Vs
end
if(strcmp(vector{m,1},'Is'))  
    current_source=vector{m,5}; %assigning the value to variable Is
end
if(strcmp(vector{m,1},'Vx'))  
    dependent_voltage_source=vector{m,6}; %assigning the value to variable Vx
end
if(strcmp(vector{m,1},'R1')) 
    R1=vector{m,5}; %assigning the value to variable R1
end
if(strcmp(vector{m,1},'R2')) 
    R2=vector{m,5}; %assigning the value to variable R2
end
if(strcmp(vector{m,1},'R3'))
    R3=vector{m,5}; %assigning the value to variable R3
end
end
V=[0 ; voltage_source ; current_source];% matrix of sources of voltage & current
R=[1-dependent_voltage_source*R1,0,dependent_voltage_source*R1 ; -R2,R2+R3,0 ; 0,0,1];% matrix of impdenace
I = R^(-1)*V;% matrix of mesh currents
%% its time to find current&voltage&power
branch_current_vector = [ I(3)-I(1) ; I(1)-I(2) ; I(2) ; I(3)-I(2) ; current_source ; I(1)];% current of branches
branch_voltage_vector = [ R1*branch_current_vector(1) ; R2*branch_current_vector(2) ; R3*branch_current_vector(3) ; voltage_source ; (-voltage_source-R1*branch_current_vector(1)) ; -R3*branch_current_vector(3)-(-voltage_source-R1*branch_current_vector(1))];%voltage of each element
power = branch_voltage_vector.*branch_current_vector;
Answer_Vector = [branch_current_vector,branch_voltage_vector,power];
%% outputs
vs = Answer_Vector(4,:) 
is = Answer_Vector(5,:) 
vx = Answer_Vector(6,:) 
resistor1 = Answer_Vector(1,:) 
resistor2 = Answer_Vector(2,:) 
resistor3 = Answer_Vector(3,:) 
end
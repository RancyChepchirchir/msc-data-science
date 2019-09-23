clear all;
% Covariance and correlation 
% Read the text - http://ci.columbia.edu/ci/premba_test/c0331/s7/s7_5.html
% 1. Load the hospital dataset
load hospital; 
hospital.Properties.VarNames(:);
% Calculate the covariance between weight and blood pressure in patients

% Covariance indicates how two variables are related. A positive covariance 
% means the variables are positively related, while a negative covariance 
% means the variables are inversely related. The formula for calculating 
% covariance of sample data is shown below...

% cov(hospital.Weight, hospital.BloodPressure);

x = [hospital.BloodPressure];
diastolicBP = x(:,1);
sistolicBP = x(:,2);
weight = [hospital.Weight];
age = [hospital.Age];
numeric_data = [diastolicBP, sistolicBP, weight, age];
corrcoef(numeric_data)
cov(numeric_data)

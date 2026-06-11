CREATE DATABASE banking_churn_analysis;

USE banking_churn_analysis;

CREATE TABLE bank_customers (
    CustomerID INT PRIMARY KEY,
    Age INT,
    Gender VARCHAR(10),
    Geography VARCHAR(50),
    Tenure INT,
    Balance DECIMAL(12,2),
    NumOfProducts INT,
    HasCreditCard INT,
    IsActiveMember INT,
    EstimatedSalary DECIMAL(12,2),
    Exited INT
);

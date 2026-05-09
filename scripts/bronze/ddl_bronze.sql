/*
===============================================================================
DDL Script: Create Bronze Tables
===============================================================================
Script Purpose:
    This script creates tables in the 'bronze' schema, dropping existing tables 
    if they already exist.
	  Run this script to re-define the DDL structure of 'bronze' Tables
===============================================================================
*/


USE DataWarehouse;
GO

IF OBJECT_ID('bronze.credit_data', 'U') IS NOT NULL
    DROP TABLE bronze.credit_data;
GO

CREATE TABLE bronze.credit_data (
    LOAN_ID VARCHAR(100),
    DATE VARCHAR(50),
    CUSTOMER_AGE INT,
    TOTAL_PAID FLOAT,
    TOTAL_DUE_TODAY FLOAT,
    BALANCE FLOAT,
    DAYS_PAST_DUE INT,
    CLOSING_BALANCE FLOAT,
    ADVANCE FLOAT,
    BALANCE_DUE_TO_DATE FLOAT,
    ARREARS FLOAT,
    BALANCE_DUE_STATUS VARCHAR(50),
    PAYMENT INT,
    EXPECTED_PAYMENT FLOAT,
    FIRST_PAYMENT FLOAT,
    FIRST_EXPECTED_PAYMENT FLOAT,
    ACCOUNT_STATUS_L1 VARCHAR(100),
    ACCOUNT_STATUS_L2 VARCHAR(100),
    RETURN_DATE VARCHAR(50),
    SALE_DATE VARCHAR(50),
    CREDIT_CHECK_DONE VARCHAR(50),
    PAYMENT_AMOUNT FLOAT,
    ADJUSTMENT_AMOUNT FLOAT,
    PREPAYMENT_AMOUNT FLOAT,
    DEPOSIT FLOAT,
    WEEKLY_RATE FLOAT,
    CREDIT_EXPIRY VARCHAR(50),
    NEXT_INVOICE_DATE VARCHAR(50),
    DISCOUNT FLOAT,
    OVERPAYMENT_AMOUNT FLOAT,
    MAX_PAYMENT_DATE VARCHAR(50),
    INITIAL_PAY FLOAT,
    TOTAL_PAID_WITH_ADJUSTMENTS_15D FLOAT
);
GO

IF OBJECT_ID('bronze.sales_and_customer_data', 'U') IS NOT NULL
    DROP TABLE bronze.sales_and_customer_data;
GO

CREATE TABLE bronze.sales_and_customer_data (
    SALE_ID VARCHAR(100),
    SALE_DATE VARCHAR(50),
    RETURNED VARCHAR(20),
    RETURN_DATE VARCHAR(50),
    SALE_TYPE VARCHAR(100),
    SELLER VARCHAR(100),
    SELLER_TYPE VARCHAR(100),
    RETURN_POLICY_COMPLIANCE VARCHAR(100),
    CASH_PRICE FLOAT,
    LOAN_PRICE FLOAT,
    CLIENT_MODEL VARCHAR(100),
    BUSINESS_MODEL VARCHAR(100),
    LOAN_TERM INT,
    PRODUCT_NAME VARCHAR(255),
    MODEL VARCHAR(255),
    LOAN_ID VARCHAR(100)
);
GO 

IF OBJECT_ID('bronze.NPS_data', 'U') IS NOT NULL
    DROP TABLE bronze.NPS_data;
GO

CREATE TABLE bronze.NPS_data (
    Submission_ID VARCHAR(100),
    Respondent_ID VARCHAR(100),
    Submitted_at VARCHAR(50),
    Loan_ID VARCHAR(100),

    Recommendation_Score INT,

    Main_Reason VARCHAR(MAX),

    Improvement_Suggestion VARCHAR(MAX),

    Device_Quality_Satisfaction VARCHAR(50),

    Service_Support_Satisfaction VARCHAR(50),

    Payment_Reflection_Delay VARCHAR(50),

    Support_Assistance_Difficulty VARCHAR(50),

    Support_Challenge_Description VARCHAR(MAX),

    Battery_Issues VARCHAR(50),

    MoApp_Usage VARCHAR(50),

    Preferred_Communication_Channel VARCHAR(100),

    Phone_Lock_Despite_Payment VARCHAR(50),

    Other_Feedback VARCHAR(MAX)
);




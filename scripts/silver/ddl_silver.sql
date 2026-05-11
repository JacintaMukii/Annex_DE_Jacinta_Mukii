/*
===============================================================================
DDL Script: Create Silver Tables
===============================================================================
Script Purpose:
    This script creates tables in the 'silver' schema, dropping existing tables 
    if they already exist.
	  Run this script to re-define the DDL structure of 'bronze' Tables
===============================================================================
*/

-- 1. Silver Credit Data

IF OBJECT_ID('silver.credit_data', 'U') IS NOT NULL
    DROP TABLE silver.credit_data;
GO

CREATE TABLE silver.credit_data (
    LOAN_ID VARCHAR(MAX),
    DATE DATE,
    CUSTOMER_AGE INT,
    TOTAL_PAID FLOAT,
    TOTAL_DUE_TODAY FLOAT,
    BALANCE FLOAT,
    DAYS_PAST_DUE INT,
    CLOSING_BALANCE FLOAT,
    ADVANCE FLOAT,
    BALANCE_DUE_TO_DATE FLOAT,
    ARREARS FLOAT,
    BALANCE_DUE_STATUS VARCHAR(MAX),
    PAYMENT INT,
    EXPECTED_PAYMENT FLOAT,
    FIRST_PAYMENT FLOAT,
    FIRST_EXPECTED_PAYMENT FLOAT,
    ACCOUNT_STATUS_L1 VARCHAR(MAX),
    ACCOUNT_STATUS_L2 VARCHAR(MAX),
    RETURN_DATE VARCHAR(MAX),
    SALE_DATE DATE,
    CREDIT_CHECK_DONE VARCHAR(MAX),
    PAYMENT_AMOUNT FLOAT,
    ADJUSTMENT_AMOUNT FLOAT,
    PREPAYMENT_AMOUNT FLOAT,
    DEPOSIT FLOAT,
    WEEKLY_RATE FLOAT,
    CREDIT_EXPIRY VARCHAR(MAX),
    NEXT_INVOICE_DATE DATE,
    DISCOUNT FLOAT,
    OVERPAYMENT_AMOUNT FLOAT,
    MAX_PAYMENT_DATE VARCHAR(MAX),
    INITIAL_PAY FLOAT,
    TOTAL_PAID_WITH_ADJUSTMENTS_15D VARCHAR(MAX), 
    dwh_create_date    DATETIME2 DEFAULT GETDATE()
);
GO


-- 2. Silver Sales & Customer Data

IF OBJECT_ID('silver.sales_and_customer_data', 'U') IS NOT NULL
    DROP TABLE silver.sales_and_customer_data;
GO

CREATE TABLE silver.sales_and_customer_data ( 
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
    LOAN_TERM NVARCHAR(MAX),
    PRODUCT_NAME VARCHAR(255),
    MODEL VARCHAR(255),
    LOAN_ID VARCHAR(100), 
    dwh_create_date    DATETIME2 DEFAULT GETDATE()
);
GO


-- 3. Silver NPS Data

IF OBJECT_ID('silver.NPS_data', 'U') IS NOT NULL
    DROP TABLE silver.NPS_data;
GO

CREATE TABLE silver.NPS_data ( 
    Submission_ID NVARCHAR(100),
    Respondent_ID NVARCHAR(100),
    Submitted_at NVARCHAR(100),
    Loan_ID NVARCHAR(100),
    Recommendation_Score INT,
    Main_Reason NVARCHAR(MAX),
    Improvement_Suggestion NVARCHAR(MAX),
    Device_Quality_Satisfaction NVARCHAR(100),
    Service_Support_Satisfaction NVARCHAR(100),
    Payment_Reflection_Delay NVARCHAR(100),
    Support_Assistance_Difficulty NVARCHAR(100),
    Support_Challenge_Description NVARCHAR(MAX),
    Battery_Issues NVARCHAR(100),
    MoApp_Usage NVARCHAR(100),
    Preferred_Communication_Channel NVARCHAR(255),
    Phone_Lock_Despite_Payment NVARCHAR(100),
    Any_other_Feedback NVARCHAR(MAX), 
    dwh_create_date    DATETIME2 DEFAULT GETDATE()
);
GO

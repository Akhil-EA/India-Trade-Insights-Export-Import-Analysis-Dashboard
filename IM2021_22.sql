ALTER TABLE [GovtData].[dbo].[Import2021_22]
ADD 
    FinancialYear NVARCHAR(9),
    Category NVARCHAR(255);

UPDATE [GovtData].[dbo].[Import2021_22]
SET FinancialYear = '2021-22';

UPDATE [GovtData].[dbo].[Import2021_22]
SET Category = 
    CASE 
        WHEN UNIT = 'KGS' THEN 'Smaller Bulk'
        WHEN UNIT = 'TON' THEN 'Large Bulk'
        WHEN UNIT = 'LTR' THEN 'Liquid'
        WHEN UNIT = 'NOS' THEN 'Count'
        WHEN UNIT = 'SQM' THEN 'Surface Area'
        ELSE 'Others'  --  For any other unit
    END;

	SELECT 
    PRINCIPLE_COMMODITY as COMMODITY,
    COUNTRY,
    UNIT,
    Category,
    QUANTITY,
    VALUE_US_million,
    FinancialYear
FROM [GovtData].[dbo].[Import2021_22];





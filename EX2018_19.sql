ALTER TABLE [GovtData].[dbo].[Export2018_19]
ADD 
    FinancialYear NVARCHAR(9),
    Category NVARCHAR(255);

UPDATE [GovtData].[dbo].[Export2018_19]
SET FinancialYear = '2018-19';

UPDATE [GovtData].[dbo].[Export2018_19]
SET Category = 
    CASE 
        WHEN UNIT = 'KGS' THEN 'Smaller Bulk'
        WHEN UNIT = 'TON' THEN 'Large Bulk'
        WHEN UNIT = 'LTR' THEN 'Liquid'
        WHEN UNIT = 'NOS' THEN 'Parts'
        WHEN UNIT = 'SQM' THEN 'Surface Area'
        ELSE 'Others'  --  For any other unit
    END;

	SELECT 
    COMMODITY,
    COUNTRY,
    UNIT,
    Category,
    QUANTITY,
    VALUE_US_million,
    FinancialYear
FROM [GovtData].[dbo].[Export2018_19];
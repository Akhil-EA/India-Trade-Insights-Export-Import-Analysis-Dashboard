ALTER TABLE [GovtData].[dbo].[Import2019_20]
ADD 
    FinancialYear NVARCHAR(9),
    Category NVARCHAR(255);

UPDATE [GovtData].[dbo].[Import2019_20]
SET FinancialYear = '2019-20';

UPDATE [GovtData].[dbo].[Import2019_20]
SET Category = 
    CASE 
        WHEN UNIT = 'KGS' THEN 'Smaller Bulk'
        WHEN UNIT = 'TON' THEN 'Large Bulk'
        WHEN UNIT = 'LTR' THEN 'Volume'
        WHEN UNIT = 'NOS' THEN 'Count'
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
FROM [GovtData].[dbo].[Import2019_20];



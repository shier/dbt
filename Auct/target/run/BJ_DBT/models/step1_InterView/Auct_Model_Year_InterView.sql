create view "dbo_stg"."Auct_Model_Year_InterView__dbt_tmp" as
    
Select
	[MODELID] [ModelID],
	[YEARID] [YearID]
From stg.[Auct_Model_Year_Raw]

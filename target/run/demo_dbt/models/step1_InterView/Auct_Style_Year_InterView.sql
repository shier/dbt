create view "stg"."Auct_Style_Year_InterView__dbt_tmp" as
    
Select
	[STYLEID] [StyleID],
	[YEARID] [YearID]
From stg.[Auct_Style_Year_Raw]

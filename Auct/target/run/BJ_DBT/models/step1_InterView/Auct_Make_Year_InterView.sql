create view "dbo_stg"."Auct_Make_Year_InterView__dbt_tmp" as
    
Select
	[MAKEID] [MakeID],
	[YEARID] [YearID]
From stg.[Auct_Make_Year_Raw]

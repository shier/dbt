create view "stg"."Mer_Date_InterView__dbt_tmp" as
    
Select
	[DATEID] [DateID],
	[DATE] [Date]
From stg.[Mer_Date_Raw]

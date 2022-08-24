create view "dbo_stg"."Auct_CarOption_InterView__dbt_tmp" as
    
Select
	[CAROPTIONID] [CarOptionID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_CarOption_Raw]

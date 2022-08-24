create view "dbo_stg"."Auct_SparePartsType_InterView__dbt_tmp" as
    
Select
	[SPAREPARTSTYPEID] [SparePartsTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	cast([INACTIVE] as nvarchar(4000)) [InActive],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_SparePartsType_Raw]

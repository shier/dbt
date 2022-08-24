create view "dbo_stg"."Auct_CarModel_InterView__dbt_tmp" as
    
Select
	[CARMODELID] [CarModelID],
	[ACTIVE] [Active],
	[WEBACTIVE] [WebActive],
	cast([NAME] as nvarchar(4000)) [Name],
	[CARTYPEID] [CarTypeID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	cast([ROWGUID] as nvarchar(4000)) [RowGUID]
From stg.[Auct_CarModel_Raw]

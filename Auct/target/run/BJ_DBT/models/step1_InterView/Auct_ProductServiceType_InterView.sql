create view "dbo_stg"."Auct_ProductServiceType_InterView__dbt_tmp" as
    
Select
	[PRODUCTSERVICETYPEID] [ProductServiceTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_ProductServiceType_Raw]

create view "stg"."Auct_VendorType_InterView__dbt_tmp" as
    
Select
	[VENDORTYPEID] [VendorTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_VendorType_Raw]

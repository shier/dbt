create view "dbo_stg"."Auct_AddressTypes_InterView__dbt_tmp" as
    
Select
	[ADDRESSTYPEID] [AddressTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	cast([ICON] as nvarchar(4000)) [Icon],
	cast([PROCESSORNAME] as nvarchar(4000)) [ProcessorName],
	[LEVEL] [Level]
From stg.[Auct_AddressTypes_Raw]

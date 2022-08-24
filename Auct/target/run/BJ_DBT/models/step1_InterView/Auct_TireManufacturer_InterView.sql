create view "dbo_stg"."Auct_TireManufacturer_InterView__dbt_tmp" as
    
Select
	[TIREMANUFACTURERID] [TireManufacturerID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_TireManufacturer_Raw]

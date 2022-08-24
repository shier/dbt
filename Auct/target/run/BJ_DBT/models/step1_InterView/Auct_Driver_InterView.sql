create view "stg"."Auct_Driver_InterView__dbt_tmp" as
    
Select
	[DRIVERID] [DriverID],
	[ACTIVE] [Active],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created]
From stg.[Auct_Driver_Raw]

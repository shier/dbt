create view "stg"."AH_ThReadTracking_InterView__dbt_tmp" as
    
Select
	cast([ThreadGUID] as nvarchar(4000)) [ThReadGUID],
	cast([Name] as nvarchar(4000)) [Name],
	[DateStamp] [DaTestamp],
	[PrimaryThread] [PrimarythRead]
From stg.[AH_ThReadTracking_Raw]

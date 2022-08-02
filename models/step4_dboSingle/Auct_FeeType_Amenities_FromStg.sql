{{ config(materialized='table',schema='dbo')}}
Select
	cast([FeeType_AmenityID] as int) [FeeType_AmenityID],
	cast([FeeTypeID] as int) [FeeTypeID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([StartDate] as datetime) [StartDate],
	cast([EndDate] as datetime) [EndDate],
	cast([Created] as datetime) [Created],
	cast([CreatedByUser] as nvarchar(4000)) [CreatedByUser],
	cast([OrderBy] as int) [OrderBy],
	cast([Active] as bit) [Active] 
From stg.[Auct_FeeType_Amenities_FinalView]
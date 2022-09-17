{{ config(materialized='table',schema='dbo')}}
Select
	cast([FeeType_AmenityID] as int) [FEETYPE_AMENITYID],
	cast([FeeTypeID] as int) [FEETYPEID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([StartDate] as datetime) [STARTDATE],
	cast([EndDate] as datetime) [ENDDATE],
	cast([Created] as datetime) [CREATED],
	cast([CreatedByUser] as nvarchar(4000)) [CREATEDBYUSER],
	cast([OrderBy] as int) [ORDERBY],
	cast([Active] as bit) [ACTIVE] 
From stg.[Auct_FeeType_Amenities_FinalView]
{{ config(materialized='view',schema='stg')}}
Select
	[FEETYPE_AMENITYID] [FeeType_AmenityID],
	[FEETYPEID] [FeeTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[STARTDATE] [StartDate],
	[ENDDATE] [EndDate],
	[CREATED] [Created],
	cast([CREATEDBYUSER] as nvarchar(4000)) [CreatedByUser],
	[ORDERBY] [OrderBy],
	[ACTIVE] [Active]
From stg.[Auct_FeeType_Amenities_Raw]

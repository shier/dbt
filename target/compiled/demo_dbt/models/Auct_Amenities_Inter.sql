
Select
	ORDERBY OrderBy,
	FEETYPE_AMENITYID FeeType_AmenityID,
	FEETYPEID FeeTypeID,
	STARTDATE StartDate,
	ENDDATE EndDate,
	CREATED Created,
	ACTIVE Active,
	cast(NAME as nvarchar(4000)) Name,
	cast(CREATEDBYUSER as nvarchar(4000)) CreatedByUser
From Auct_Amenities_Raw
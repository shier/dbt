
Select
	Amount Amount,
	cast(Processor as nvarchar(4000)) Processor,
	cast(Name as nvarchar(4000)) Name,
	cast(Description as nvarchar(4000)) Description,
	DeletedOn Deletedon,
	CreatedOn Createdon,
	UpdatedOn Updatedon,
	Id ID,
	ListingTypeId ListingTypeID,
	EventId EventID
From AH_Feeproperties_Raw
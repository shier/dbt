
Select
	CreateDate CreateDate,
	ModifyDate ModifyDate,
	EndDate EndDate,
	Id ID,
	ListingId ListingID,
	PaymentTypeId PaymentTypeID,
	isActive IsActive,
	cast(SalesforceOpportunityId as nvarchar(4000)) SalesForceOpportunityID
From CC_Showcase_Raw

Select
	cast([ID] as int) [Id],
	cast([ListingID] as int) [ListingId],
	cast([PaymentTypeID] as int) [PaymentTypeId],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([EndDate] as datetime) [EndDate],
	cast([IsActive] as bit) [isActive],
	cast([SalesForceOpportunityID] as nvarchar(4000)) [SalesforceOpportunityId] 
From stg.[CC_Showcase_FinalView]
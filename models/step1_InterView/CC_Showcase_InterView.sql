{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[ListingId] [ListingID],
	[PaymentTypeId] [PaymentTypeID],
	[CreateDate] [CreateDate],
	[ModifyDate] [ModifyDate],
	[EndDate] [EndDate],
	[isActive] [IsActive],
	cast([SalesforceOpportunityId] as nvarchar(4000)) [SalesForceOpportunityID]
From stg.[CC_Showcase_Raw]

{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([ListingID] as int) [ListingID],
	cast([PaymentTypeID] as int) [PaymentTypeID],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([EndDate] as datetime) [EndDate],
	cast([IsActive] as bit) [IsActive],
	cast([SalesForceOpportunityID] as nvarchar(4000)) [SalesForceOpportunityID] 
From stg.[CC_Showcase_FinalView]
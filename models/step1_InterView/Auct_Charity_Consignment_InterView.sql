{{ config(materialized='view',schema='stg')}}
Select
	[CONSIGNMENTID] [ConsignmentID],
	[CHARITYID] [CharityID],
	[ACTIVE] [Active]
From stg.[Auct_Charity_Consignment_Raw]

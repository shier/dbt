{{ config(materialized='view',schema='stg')}}
Select
	[BUYERID] [BuyerID],
	[CONTACTID] [ContactID],
	[COMPANYID] [CompanyID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_Buyer_Raw]

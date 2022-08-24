create view "dbo_stg"."Auct_Buyer_InterView__dbt_tmp" as
    
Select
	[BUYERID] [BuyerID],
	[CONTACTID] [ContactID],
	[COMPANYID] [CompanyID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_Buyer_Raw]

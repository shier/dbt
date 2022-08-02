{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	cast([TransactionId] as nvarchar(4000)) [TransactionID],
	[Amount] [Amount],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[ListingId] [ListingID],
	[ConsignorId] [ConsignorID],
	[HasProMarketing] [HasproMarketing],
	[HasProPhotography] [HasproPhotography]
From stg.[AH_SubmittedListingPayment_Raw]

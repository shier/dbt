{{ config(materialized='table',schema='stg')}}
SELECT
		[Id] AS [SubmittedListingPaymentID],
		[ConsignorId] AS [UserID],
		[ListingId] AS [ListingID],
		[Amount],
		[HasProPhotography],
		[HasProMarketing],
		[TransactionId] AS [TransactionID],
		[CreatedOn] AS [CreatedDate],
		[UpdatedOn] AS [UpdatedDate]
FROM [stg].[AH_SubmittedListingPayment_FinalView];
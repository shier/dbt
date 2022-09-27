
SELECT
		slp.[SubmittedListingPaymentID],
		c.[Consignor_Skey],
		slp.[UserID],
		slp.[ListingID],
		slp.[Amount],
		slp.[HasProPhotography],
		slp.[HasProMarketing],
		slp.[TransactionID],
		slp.[CreatedDate],
		slp.[UpdatedDate]
FROM
	[stg].[AH_SubmittedListingPayment_FT_stg] slp
left join [dbo].[AH_Consignors_DM] c on slp.UserID=c.UserID

SELECT
		la.[ListingActionID],
		b.[Buyer_Skey],
		la.[UserID],
		la.[ListingID],
		la.[ActionDTTM],
		la.[Description],
		la.[LastUpdatedUser],
		la.[Amount],
		la.[ProxyAmount],
		la.[QTY],
		la.[Reason],
		la.[Status],
		la.[HasUserEntered],
		la.[CreatedDate],
		la.[UpdatedDate],
		la.[DeletedDate]
FROM	[stg].[AH_ListingActions_FT_stg] la
left join [dbo].[AH_Buyers_DM] b on la.UserID=b.UserID
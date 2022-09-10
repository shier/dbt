{{ config(materialized='table',schema='stg')}}
SELECT
		w.[WatchID],
		b.[Buyer_Skey],
		w.[UserID],
		w.[ListingID],
		w.[LastUpdatedUser],
		w.[CreatedDate],
		w.[UpdatedDate],
		w.[DeletedDate]
FROM [stg].[AH_Watches_FT_stg] w
left join [dbo].[AH_Buyers_DM] b on w.UserID=b.UserID
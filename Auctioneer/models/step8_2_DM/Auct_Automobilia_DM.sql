{{ config(materialized='table',schema='dbo')}}
SELECT
	[Item_Skey],
	[AutomobiliaID],
	[AutomobiliaTypeID],
	[AutomobiliaConditionID],
	[ItemID],
	[ItemType],
	[ItemDescription],
	-- [Description],
	[Created],
	[UpdateEventID],
	[Lotnumber],
	[CustomerAccountID],
	[AuctionID],
	[Comments]
FROM [stg].[Auct_Automobilia_DM_stg];
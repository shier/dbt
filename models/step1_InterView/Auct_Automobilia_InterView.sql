{{ config(materialized='view',schema='stg')}}
Select
	[AUTOMOBILIAID] [AutomobiliaID],
	[LOTNUMBER] [LotNumber],
	[AUTOMOBILIATYPEID] [AutomobiliaTypeID],
	[AUTOMOBILIACONDITIONID] [AutomobiliaConditionID],
	[ITEMID] [ItemID],
	cast([DESCRIPTION] as nvarchar(4000)) [Description],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	[CUSTOMERACCOUNTID] [CustomerAccountID],
	[AUCTIONID] [AuctionID],
	cast([COMMENTS] as nvarchar(4000)) [Comments]
From stg.[Auct_Automobilia_Raw]

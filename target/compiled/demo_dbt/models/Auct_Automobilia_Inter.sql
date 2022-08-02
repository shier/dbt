
Select
	CREATED Created,
	ITEMID ItemID,
	UPDATEEVENTID UpdateEventID,
	CUSTOMERACCOUNTID CustomerAccountID,
	AUCTIONID AuctionID,
	AUTOMOBILIAID AutomobiliaID,
	AUTOMOBILIATYPEID AutomobiliaTypeID,
	AUTOMOBILIACONDITIONID AutomobiliaConditionID,
	cast(DESCRIPTION as nvarchar(4000)) Description,
	cast(COMMENTS as nvarchar(4000)) Comments,
	LOTNUMBER LotNumber
From Auct_Automobilia_Raw
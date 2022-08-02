
Select
	CREATED Created,
	PROJECTEDTIME ProjectedTime,
	RANGENUMBER RangeNumber,
	RANGESTART RangeStart,
	RANGEEND RangeEnd,
	RANGEID RangeID,
	CONTACTTYPEID ContactTypeID,
	AUCTIONID AuctionID,
	UPDATEEVENTID UpdateEventID,
	ISRESERVELOTFEE IsReserveLotFee,
	cast(RANGENAME as nvarchar(4000)) RangeName
From Auct_Ranges_Raw
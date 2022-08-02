
Select
	CREATED Created,
	MEDIAPARKINGPASSID MediaParkingPassID,
	MEDIAAUCTIONID MediaAuctionID,
	UPDATEEVENTID UpdateEventID,
	cast(PARKINGPASSNUMBER as nvarchar(4000)) ParkingPassNumber
From Auct_MediaParkingPass_Raw

Select
	AVAILABLETRANSMISSIONID AvailableTransMissionID,
	CARTRANSMISSIONID CarTransMissionID,
	CARMODELID CarModelID,
	UPDATEEVENTID UpdateEventID,
	CREATED Created,
	cast(ALLOWDROPDOWN as nvarchar(4000)) AllowDropDown
From Auct_AvailableTransMission_Raw
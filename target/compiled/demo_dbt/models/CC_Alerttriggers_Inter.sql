
Select
	Id ID,
	ListingId ListingID,
	AlertTriggerReasonID AlerttriggerReasonID,
	CreateDateUTC CreateDateUTC,
	ImmediateDateProcessedUTC ImmediateDateProcessedUTC,
	DailyDateProcessedUTC DailyDateProcessedUTC,
	FraudDateProcessedUTC FraudDateProcessedUTC,
	cast(OldValue as nvarchar(4000)) Oldvalue,
	cast(NewValue as nvarchar(4000)) Newvalue
From CC_Alerttriggers_Raw
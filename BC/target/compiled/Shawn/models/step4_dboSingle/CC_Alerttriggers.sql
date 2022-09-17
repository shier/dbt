
Select
	cast([ID] as int) [Id],
	cast([ListingID] as int) [ListingId],
	cast([AlerttriggerReasonID] as int) [AlertTriggerReasonID],
	cast([CreateDateUTC] as datetime) [CreateDateUTC],
	cast([ImmediateDateProcessedUTC] as datetime) [ImmediateDateProcessedUTC],
	cast([DailyDateProcessedUTC] as datetime) [DailyDateProcessedUTC],
	cast([FraudDateProcessedUTC] as datetime) [FraudDateProcessedUTC],
	cast([Oldvalue] as nvarchar(4000)) [OldValue],
	cast([Newvalue] as nvarchar(4000)) [NewValue] 
From stg.[CC_Alerttriggers_FinalView]
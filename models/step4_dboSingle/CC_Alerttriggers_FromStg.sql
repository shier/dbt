{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([ListingID] as int) [ListingID],
	cast([AlerttriggerReasonID] as int) [AlerttriggerReasonID],
	cast([CreateDateUTC] as datetime) [CreateDateUTC],
	cast([ImmediateDateProcessedUTC] as datetime) [ImmediateDateProcessedUTC],
	cast([DailyDateProcessedUTC] as datetime) [DailyDateProcessedUTC],
	cast([FraudDateProcessedUTC] as datetime) [FraudDateProcessedUTC],
	cast([Oldvalue] as nvarchar(4000)) [Oldvalue],
	cast([Newvalue] as nvarchar(4000)) [Newvalue] 
From stg.[CC_Alerttriggers_FinalView]
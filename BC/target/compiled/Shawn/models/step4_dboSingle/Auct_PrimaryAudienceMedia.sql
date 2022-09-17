
Select
	cast([PrimaryAudienceMediaID] as int) [PRIMARYAUDIENCEMEDIAID],
	cast([MediaID] as int) [MEDIAID],
	cast([PrimaryAudienceID] as int) [PRIMARYAUDIENCEID],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_PrimaryAudienceMedia_FinalView]
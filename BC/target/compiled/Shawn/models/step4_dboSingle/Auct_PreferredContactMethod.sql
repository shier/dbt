
Select
	cast([PreferredContactMethodID] as int) [PREFERREDCONTACTMETHODID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_PreferredContactMethod_FinalView]

Select
	cast([ID] as int) [id],
	cast([Publication] as nvarchar(4000)) [publication],
	cast([Sent_Date] as datetime) [sent_date],
	cast([Description] as nvarchar(4000)) [description] 
From stg.[Auct_MSPeer_Request_FinalView]
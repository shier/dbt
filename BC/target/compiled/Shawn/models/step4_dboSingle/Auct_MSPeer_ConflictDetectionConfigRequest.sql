
Select
	cast([ID] as int) [id],
	cast([Publication] as nvarchar(4000)) [publication],
	cast([Sent_Date] as datetime) [sent_date],
	cast([TimeOut] as int) [timeout],
	cast([Modified_Date] as datetime) [modified_date],
	cast([Progress_Phase] as nvarchar(4000)) [progress_phase],
	cast([Phase_Timed_Out] as bit) [phase_timed_out] 
From stg.[Auct_MSPeer_ConflictDetectionConfigRequest_FinalView]

Select
	id ID,
	timeout TimeOut,
	sent_date Sent_Date,
	modified_date Modified_Date,
	cast(publication as nvarchar(4000)) Publication,
	cast(progress_phase as nvarchar(4000)) Progress_Phase,
	phase_timed_out Phase_Timed_Out
From Auct_ConflictDetectionConfigRequest_Raw
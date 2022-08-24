{{ config(materialized='view',schema='stg')}}
Select
	[id] [ID],
	cast([publication] as nvarchar(4000)) [Publication],
	[sent_date] [Sent_Date],
	[timeout] [TimeOut],
	[modified_date] [Modified_Date],
	cast([progress_phase] as nvarchar(4000)) [Progress_Phase],
	[phase_timed_out] [Phase_Timed_Out]
From stg.[Auct_MSPeer_ConflictDetectionConfigRequest_Raw]

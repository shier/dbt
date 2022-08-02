{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([Publication] as nvarchar(4000)) [Publication],
	cast([Sent_Date] as datetime) [Sent_Date],
	cast([TimeOut] as int) [TimeOut],
	cast([Modified_Date] as datetime) [Modified_Date],
	cast([Progress_Phase] as nvarchar(4000)) [Progress_Phase],
	cast([Phase_Timed_Out] as bit) [Phase_Timed_Out] 
From stg.[Auct_MSPeer_ConflictDetectionConfigRequest_FinalView]
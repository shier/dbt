{{ config(materialized='view',schema='stg')}}
Select
	[ID],[Publication],[Sent_Date],[TimeOut],[Modified_Date],[Progress_Phase],[Phase_Timed_Out] 
From stg.[Auct_MSPeer_ConflictDetectionConfigRequest_Incr] 
Where [dbt_valid_to] is null
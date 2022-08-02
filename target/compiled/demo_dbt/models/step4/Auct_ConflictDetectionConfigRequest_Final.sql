
Select
	[ID],[TimeOut],[Sent_Date],[Modified_Date],[Publication],[Progress_Phase],[Phase_Timed_Out] 
From stg.[Auct_ConflictDetectionConfigRequest_Incr] 
Where [dbt_valid_to] is null
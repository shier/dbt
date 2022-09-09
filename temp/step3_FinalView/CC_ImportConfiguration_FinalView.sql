{{ config(materialized='view',schema='stg')}}
Select
	[CompanyID],[FileSize_kBytes],[Totalentries],[ValIDEntries],[Completedentries],[ActiveFromUTC],[ActivetOutC],[LastSuccessFileTimeStamp],[LastSuccessCompletedUTC],[FileTimeStamp],[CycleStart],[CycleEnd],[AllowLinksinDescriptions],[SkipMakeModelVerification],[FileName] 
From stg.[CC_ImportConfiguration_Incr] 
Where [dbt_valid_to] is null
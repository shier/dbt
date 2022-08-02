
Select
	[CompanyID],[FileName],[ActiveFromUTC],[ActivetOutC],[LastSuccessFileTimeStamp],[LastSuccessCompletedUTC],[FileTimeStamp],[CycleStart],[CycleEnd],[FileSize_kBytes],[Totalentries],[ValIDEntries],[Completedentries],[AllowLinksinDescriptions],[SkipMakeModelVerification] 
From stg.[CC_ImportConfiguration_Incr] 
Where [dbt_valid_to] is null

With hashData as (
		Select
			HASHBYTES('MD5', concat(FileName, Cast(ActiveFromUTC as varchar), Cast(ActivetOutC as varchar), Cast(LastSuccessFileTimeStamp as varchar), Cast(LastSuccessCompletedUTC as varchar), Cast(FileTimeStamp as varchar), Cast(CycleStart as varchar), Cast(CycleEnd as varchar), Cast(FileSize_kBytes as varchar), Cast(Totalentries as varchar), Cast(ValIDEntries as varchar), Cast(Completedentries as varchar), Cast(AllowLinksinDescriptions as varchar), Cast(SkipMakeModelVerification as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_ImportConfiguration_Inter]
	)
Select * From hashData


With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(ParentReportingID as varchar), Cast(IsActive as varchar), Cast(DisplayOrder as varchar), Name, DataRetrievalClassName)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Reporting_Inter]
	)
Select * From hashData

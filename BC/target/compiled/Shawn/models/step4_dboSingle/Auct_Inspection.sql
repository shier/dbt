
Select
	cast([InspectionID] as int) [INSPECTIONID],
	cast([CarID] as int) [CARID],
	cast([OwnerContactID] as int) [OWNERCONTACTID],
	cast([PerFormedByContactID] as int) [PERFORMEDBYCONTACTID],
	cast([Results] as nvarchar(4000)) [RESULTS],
	cast([DateperFormed] as DATETIME) [DATEPERFORMED],
	cast([DateRequested] as DATETIME) [DATEREQUESTED],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_Inspection_FinalView]
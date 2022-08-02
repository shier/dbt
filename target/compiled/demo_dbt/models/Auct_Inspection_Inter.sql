
Select
	DATEPERFORMED DateperFormed,
	DATEREQUESTED DateRequested,
	CREATED Created,
	INSPECTIONID InspectionID,
	CARID CarID,
	OWNERCONTACTID OwnerContactID,
	PERFORMEDBYCONTACTID PerFormedByContactID,
	UPDATEEVENTID UpdateEventID,
	cast(RESULTS as nvarchar(4000)) Results
From Auct_Inspection_Raw
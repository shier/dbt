
Select
	CREATED Created,
	CAROPTIONINCLUDEID CarOptionIncludeID,
	SOURCECAROPTIONID SourceCarOptionID,
	TARGETCAROPTIONID TargetCarOptionID,
	UPDATEEVENTID UpdateEventID,
	cast(INCLUDE as nvarchar(4000)) Include
From Auct_CarOptionInclude_Raw
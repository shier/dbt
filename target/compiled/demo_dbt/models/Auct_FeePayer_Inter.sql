
Select
	FEEPAYERID FeePayerID,
	UPDATEEVENTID UpdateEventID,
	CREATED Created,
	cast(NAME as nvarchar(4000)) Name
From Auct_FeePayer_Raw
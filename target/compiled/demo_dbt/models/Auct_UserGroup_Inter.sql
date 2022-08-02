
Select
	CREATED Created,
	GROUPID GroupID,
	UPDATEEVENTID UpdateEventID,
	GROUPOWNER GroupOwner,
	cast(NAME as nvarchar(4000)) Name,
	cast(DISTRIBUTIONEMAIL as nvarchar(4000)) DistributionEmail
From Auct_UserGroup_Raw
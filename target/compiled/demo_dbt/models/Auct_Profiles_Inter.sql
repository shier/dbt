
Select
	PROFILEID ProfileID,
	ISAUTHENTICATED IsAuthenticated,
	LASTACTIVITYDATE LastActivityDate,
	LASTUPDATEDDATE LastUpdateddate,
	cast(USERNAME as nvarchar(4000)) UserName,
	cast(APPLICATIONNAME as nvarchar(4000)) ApplicationName,
	cast(ISANONYMOUS as nvarchar(4000)) IsAnonymous
From Auct_Profiles_Raw
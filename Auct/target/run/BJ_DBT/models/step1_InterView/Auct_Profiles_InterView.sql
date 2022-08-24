create view "dbo_stg"."Auct_Profiles_InterView__dbt_tmp" as
    
Select
	[PROFILEID] [ProfileID],
	cast([USERNAME] as nvarchar(4000)) [UserName],
	cast([APPLICATIONNAME] as nvarchar(4000)) [ApplicationName],
	cast([ISANONYMOUS] as nvarchar(4000)) [IsAnonymous],
	[LASTACTIVITYDATE] [LastActivityDate],
	[LASTUPDATEDDATE] [LastUpdateddate],
	[ISAUTHENTICATED] [IsAuthenticated]
From stg.[Auct_Profiles_Raw]

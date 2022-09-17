{{ config(materialized='table',schema='dbo')}}
Select
	cast([ProfileID] as int) [PROFILEID],
	cast([UserName] as nvarchar(4000)) [USERNAME],
	cast([ApplicationName] as nvarchar(4000)) [APPLICATIONNAME],
	cast([IsAnonymous] as nvarchar(4000)) [ISANONYMOUS],
	cast([LastActivityDate] as datetime) [LASTACTIVITYDATE],
	cast([LastUpdateddate] as datetime) [LASTUPDATEDDATE],
	cast([IsAuthenticated] as int) [ISAUTHENTICATED] 
From stg.[Auct_Profiles_FinalView]
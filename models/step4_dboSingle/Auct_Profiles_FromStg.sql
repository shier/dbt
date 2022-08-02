{{ config(materialized='table',schema='dbo')}}
Select
	cast([ProfileID] as int) [ProFileID],
	cast([UserName] as nvarchar(4000)) [UserName],
	cast([ApplicationName] as nvarchar(4000)) [ApplicationName],
	cast([IsAnonymous] as nvarchar(4000)) [IsAnonymous],
	cast([LastActivityDate] as datetime) [LastActivityDate],
	cast([LastUpdateddate] as datetime) [LastUpdateddate],
	cast([IsAuthenticated] as int) [IsAuthenticated] 
From stg.[Auct_Profiles_FinalView]
{{ config(materialized='table',schema='dbo')}}
Select
	cast([GroupID] as int) [GROUPID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([DistributionEmail] as nvarchar(4000)) [DISTRIBUTIONEMAIL],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([GroupOwner] as int) [GROUPOWNER] 
From stg.[Auct_UserGroup_FinalView]
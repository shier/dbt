{{ config(materialized='table',schema='dbo')}}
Select
	cast([GroupID] as int) [GroupID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([DistributionEmail] as nvarchar(4000)) [DistributionEmail],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([GroupOwner] as int) [GroupOwner] 
From stg.[Auct_UserGroup_FinalView]
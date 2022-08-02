{{ config(materialized='table',schema='dbo')}}
Select
	cast([OrganizationID] as int) [OrganizationID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([CompanyID] as int) [CompanyID],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([DeptCode] as nvarchar(4000)) [DeptCode] 
From stg.[Auct_Organization_FinalView]
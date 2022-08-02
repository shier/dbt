{{ config(materialized='table',schema='dbo')}}
Select
	cast([CompanyID] as int) [CompanyID],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([Comments] as nvarchar(4000)) [Comments],
	cast([Name] as nvarchar(4000)) [Name] 
From stg.[Auct_BJCompany_FinalView]
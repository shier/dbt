{{ config(materialized='table',schema='dbo')}}
Select
	cast([CompanyID] as int) [CompanyID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([IndustryTypeID] as int) [IndustryTypeID],
	cast([Comments] as nvarchar(4000)) [Comments],
	cast([URL] as nvarchar(4000)) [URL],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_Company_FinalView]
{{ config(materialized='table',schema='dbo')}}
Select
	cast([IndustryTypeID] as int) [IndustryTypeID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_IndustryType_FinalView]
{{ config(materialized='table',schema='dbo')}}
Select
	cast([MultiMediaTypeID] as int) [MultiMediaTypeID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Active] as int) [Active],
	cast([Extension] as nvarchar(4000)) [Extension] 
From stg.[Auct_MultiMediaType_FinalView]
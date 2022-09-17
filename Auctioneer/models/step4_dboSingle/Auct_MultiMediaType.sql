{{ config(materialized='table',schema='dbo')}}
Select
	cast([MultiMediaTypeID] as int) [MULTIMEDIATYPEID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Active] as int) [ACTIVE],
	cast([Extension] as nvarchar(4000)) [EXTENSION] 
From stg.[Auct_MultiMediaType_FinalView]
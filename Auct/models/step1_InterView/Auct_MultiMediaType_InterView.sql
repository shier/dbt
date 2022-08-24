{{ config(materialized='view',schema='stg')}}
Select
	[MULTIMEDIATYPEID] [MultiMediaTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[ACTIVE] [Active],
	cast([EXTENSION] as nvarchar(4000)) [Extension]
From stg.[Auct_MultiMediaType_Raw]

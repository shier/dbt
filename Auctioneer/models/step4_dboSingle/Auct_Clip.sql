{{ config(materialized='table',schema='dbo')}}
Select
	cast([ClipID] as int) [CLIPID],
	cast([ClipTypeID] as int) [CLIPTYPEID],
	cast([MultiMediaID] as int) [MULTIMEDIAID],
	cast([Active] as int) [ACTIVE],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Description] as nvarchar(4000)) [DESCRIPTION] 
From stg.[Auct_Clip_FinalView]
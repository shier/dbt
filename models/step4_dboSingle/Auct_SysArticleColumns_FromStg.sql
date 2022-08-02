{{ config(materialized='table',schema='dbo')}}
Select
	cast([ArtID] as int) [ArtID],
	cast([ColID] as int) [ColID],
	cast([Is_udt] as bit) [Is_udt],
	cast([Is_xml] as bit) [Is_xml],
	cast([Is_Max] as bit) [Is_Max] 
From stg.[Auct_SysArticleColumns_FinalView]
{{ config(materialized='view',schema='stg')}}
Select
	[artid] [ArtID],
	[colid] [ColID],
	[is_udt] [Is_udt],
	[is_xml] [Is_xml],
	[is_max] [Is_Max]
From stg.[Auct_SysArticleColumns_Raw]

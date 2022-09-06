{{ config(materialized='view',schema='stg')}}
Select
	[ArtID],[ColID],[Is_udt],[Is_xml],[Is_Max] 
From [Auct_SysArticleColumns_Incr]
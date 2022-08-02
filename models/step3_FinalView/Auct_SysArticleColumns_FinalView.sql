{{ config(materialized='view',schema='stg')}}
Select
	[ArtID],[ColID],[Is_udt],[Is_xml],[Is_Max] 
From stg.[Auct_SysArticleColumns_Incr] 
Where [dbt_valid_to] is null
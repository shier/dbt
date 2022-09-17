{{ config(materialized='table',schema='dbo')}}
Select
	cast([ContentID] as int) [CONTENTID],
	cast([MetaDataID] as int) [METADATAID] 
From stg.[Auct_ContentMetaData_FinalView]
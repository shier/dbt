{{ config(materialized='view',schema='stg')}}
Select
	[CONTENTID] [ContentID],
	[METADATAID] [MetaDataID]
From stg.[Auct_ContentMetaData_Raw]

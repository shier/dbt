create view "stg"."Auct_ContentMetaData_InterView__dbt_tmp" as
    
Select
	[CONTENTID] [ContentID],
	[METADATAID] [MetaDataID]
From stg.[Auct_ContentMetaData_Raw]

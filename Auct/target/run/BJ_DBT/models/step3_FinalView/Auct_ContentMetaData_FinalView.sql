create view "stg"."Auct_ContentMetaData_FinalView__dbt_tmp" as
    
Select
	[ContentID],[MetaDataID] 
From [Auct_ContentMetaData_Incr]
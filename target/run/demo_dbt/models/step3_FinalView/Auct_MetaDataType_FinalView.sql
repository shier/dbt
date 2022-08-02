create view "stg"."Auct_MetaDataType_FinalView__dbt_tmp" as
    
Select
	[MetaDataTypeID],[Name],[Active],[TableName],[ColumnName],[DisplayColumn] 
From stg.[Auct_MetaDataType_Incr] 
Where [dbt_valid_to] is null

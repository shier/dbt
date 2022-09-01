create view "stg"."Auct_MetaData_FinalView__dbt_tmp" as
    
Select
	[MetaDataID],[MetaDataTypeID],[Value],[Active],[DateCreated] 
From stg.[Auct_MetaData_Incr] 
Where [dbt_valid_to] is null

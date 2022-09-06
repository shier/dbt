create view "stg"."Auct_DocumentImageType_FinalView__dbt_tmp" as
    
Select
	[DocumentImageTypeID],[Name],[Active] 
From stg.[Auct_DocumentImageType_Incr] 
Where [dbt_valid_to] is null

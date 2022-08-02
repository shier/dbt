create view "stg"."Auct_DocumentationBits_FinalView__dbt_tmp" as
    
Select
	[DocumentationBitID],[Active],[Name] 
From stg.[Auct_DocumentationBits_Incr] 
Where [dbt_valid_to] is null

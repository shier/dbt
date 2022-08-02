create view "stg"."Auct_SaleAdjustType_FinalView__dbt_tmp" as
    
Select
	[SaleAdjustTypeID],[Active],[Name],[ProcessorName],[HtmlDescription],[ClassName] 
From stg.[Auct_SaleAdjustType_Incr] 
Where [dbt_valid_to] is null

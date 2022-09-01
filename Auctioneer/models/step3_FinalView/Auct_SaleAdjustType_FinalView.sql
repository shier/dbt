{{ config(materialized='view',schema='stg')}}
Select
	[SaleAdjustTypeID],[Active],[Name],[ProcessorName],[HtmlDescription],[ClassName] 
From stg.[Auct_SaleAdjustType_Incr] 
Where [dbt_valid_to] is null
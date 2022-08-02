{{ config(materialized='view',schema='stg')}}
Select
	[OtherDocumentationTypeID],[Title],[Description] 
From stg.[Auct_OtherDocumentationType_Incr] 
Where [dbt_valid_to] is null
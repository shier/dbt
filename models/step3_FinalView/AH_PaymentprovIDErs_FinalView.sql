{{ config(materialized='view',schema='stg')}}
Select
	[ID],[Name],[LastUpdatedUser],[DeletedOn],[CreatedOn],[UpdatedOn],[Batchcapable] 
From stg.[AH_PaymentprovIDErs_Incr] 
Where [dbt_valid_to] is null
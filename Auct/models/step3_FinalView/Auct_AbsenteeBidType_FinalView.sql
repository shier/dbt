{{ config(materialized='view',schema='stg')}}
Select
	[AbsenteeBidTypeID],[Active],[Name] 
From stg.[Auct_AbsenteeBidType_Incr] 
Where [dbt_valid_to] is null
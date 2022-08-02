{{ config(materialized='view',schema='stg')}}
Select
	[AudienceTypeID],[Name] 
From stg.[Auct_MediaAudienceType_Incr] 
Where [dbt_valid_to] is null
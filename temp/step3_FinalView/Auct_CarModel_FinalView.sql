{{ config(materialized='view',schema='stg')}}
Select
	[CarModelID],[Active],[WebActive],[Name],[CarTypeID],[Created],[UpdateEventID],[RowGUID] 
From stg.[Auct_CarModel_Incr] 
Where [dbt_valid_to] is null
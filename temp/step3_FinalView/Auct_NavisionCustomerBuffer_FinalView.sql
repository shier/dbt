{{ config(materialized='view',schema='stg')}}
Select
	[No],[Name],[Name2],[Address],[Address2],[City],[State],[CountryCode],[PostCode],[Phoneno],[Email],[HomePage],[Status],[StatusMessage],[WrotetoNavision] 
From [Auct_NavisionCustomerBuffer_Incr] 
Where [dbt_valid_to] is null
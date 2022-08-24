{{ config(materialized='view',schema='stg')}}
Select
	[InsuranceID],[CompanyName],[PhoneID],[PolicyNumber],[AgentName],[ExpirationDate],[CustomerAccountID] 
From stg.[Auct_Insurance_Incr] 
Where [dbt_valid_to] is null
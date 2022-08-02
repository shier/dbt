
Select
	[InsuranceID],[PhoneID],[CustomerAccountID],[ExpirationDate],[CompanyName],[PolicyNumber],[AgentName] 
From stg.[Auct_Insurance_Incr] 
Where [dbt_valid_to] is null
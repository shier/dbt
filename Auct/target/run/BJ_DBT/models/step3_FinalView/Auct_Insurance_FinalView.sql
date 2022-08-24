create view "stg"."Auct_Insurance_FinalView__dbt_tmp" as
    
Select
	[InsuranceID],[CompanyName],[PhoneID],[PolicyNumber],[AgentName],[ExpirationDate],[CustomerAccountID] 
From stg.[Auct_Insurance_Incr] 
Where [dbt_valid_to] is null

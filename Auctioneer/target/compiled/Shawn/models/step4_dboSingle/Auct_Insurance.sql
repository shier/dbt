
Select
	cast([InsuranceID] as int) [INSURANCEID],
	cast([CompanyName] as nvarchar(4000)) [COMPANYNAME],
	cast([PhoneID] as int) [PHONEID],
	cast([PolicyNumber] as nvarchar(4000)) [POLICYNUMBER],
	cast([AgentName] as nvarchar(4000)) [AGENTNAME],
	cast([ExpirationDate] as DATETIME) [EXPIRATIONDATE],
	cast([CustomerAccountID] as int) [CUSTOMERACCOUNTID] 
From stg.[Auct_Insurance_FinalView]
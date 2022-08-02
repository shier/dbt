
Select
	INSURANCEID InsuranceID,
	PHONEID PhoneID,
	CUSTOMERACCOUNTID CustomerAccountID,
	EXPIRATIONDATE ExpirationDate,
	cast(COMPANYNAME as nvarchar(4000)) CompanyName,
	cast(POLICYNUMBER as nvarchar(4000)) PolicyNumber,
	cast(AGENTNAME as nvarchar(4000)) AgentName
From Auct_Insurance_Raw
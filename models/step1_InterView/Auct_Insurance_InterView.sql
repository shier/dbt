{{ config(materialized='view',schema='stg')}}
Select
	[INSURANCEID] [InsuranceID],
	cast([COMPANYNAME] as nvarchar(4000)) [CompanyName],
	[PHONEID] [PhoneID],
	cast([POLICYNUMBER] as nvarchar(4000)) [PolicyNumber],
	cast([AGENTNAME] as nvarchar(4000)) [AgentName],
	[EXPIRATIONDATE] [ExpirationDate],
	[CUSTOMERACCOUNTID] [CustomerAccountID]
From stg.[Auct_Insurance_Raw]

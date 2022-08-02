{{ config(materialized='table',schema='dbo')}}
Select
	cast([InsuranceID] as int) [InsuranceID],
	cast([CompanyName] as nvarchar(4000)) [CompanyName],
	cast([PhoneID] as int) [PhoneID],
	cast([PolicyNumber] as nvarchar(4000)) [PolicyNumber],
	cast([AgentName] as nvarchar(4000)) [AgentName],
	cast([ExpirationDate] as DATETIME) [ExpirationDate],
	cast([CustomerAccountID] as int) [CustomerAccountID] 
From stg.[Auct_Insurance_FinalView]
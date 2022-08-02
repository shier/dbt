{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([Cvv] as nvarchar(4000)) [Cvv],
	cast([CreditCardID] as int) [CreditCardID] 
From stg.[AH_CreditCardsExtraInFormation_FinalView]
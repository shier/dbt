{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	cast([CVV] as nvarchar(4000)) [Cvv],
	[CreditCardId] [CreditCardID]
From stg.[AH_CreditCardsExtraInFormation_Raw]

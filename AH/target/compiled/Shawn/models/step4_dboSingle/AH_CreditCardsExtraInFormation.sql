
Select
	cast([Cvv] as nvarchar(4000)) [Cvv],
	cast([ID] as int) [ID],
	cast([CreditCardID] as int) [CreditCardID] 
From stg.[AH_CreditCardsExtraInFormation_FinalView]
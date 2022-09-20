
Select
	cast([Cvv] as nvarchar(4000)) [CVV],
	cast([ID] as int) [Id],
	cast([CreditCardID] as int) [CreditCardId] 
From stg.[AH_CreditCardsExtraInFormation_FinalView]
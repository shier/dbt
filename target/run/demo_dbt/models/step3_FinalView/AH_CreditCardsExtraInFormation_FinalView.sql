create view "stg"."AH_CreditCardsExtraInFormation_FinalView__dbt_tmp" as
    
Select
	[ID],[Cvv],[CreditCardID] 
From stg.[AH_CreditCardsExtraInFormation_Incr] 
Where [dbt_valid_to] is null

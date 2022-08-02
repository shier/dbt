{{ config(materialized='view',schema='stg')}}
Select
	[ID],[Cvv],[CreditCardID] 
From stg.[AH_CreditCardsExtraInFormation_Incr] 
Where [dbt_valid_to] is null
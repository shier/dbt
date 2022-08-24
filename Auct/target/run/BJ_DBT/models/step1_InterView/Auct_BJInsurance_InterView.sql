create view "stg"."Auct_BJInsurance_InterView__dbt_tmp" as
    
Select
	[CONTACTID] [ContactID]
From stg.[Auct_BJInsurance_Raw]

{{ config(materialized='view',schema='stg')}}
Select
	[CONTACTID] [ContactID]
From stg.[Auct_BJInsurance_Raw]

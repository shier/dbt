{{ config(materialized='table',schema='dbo')}}
Select
	cast([ContactID] as int) [CONTACTID] 
From stg.[Auct_BJInsurance_FinalView]
{{ config(materialized='table',schema='dbo')}}
Select
	cast([ContactID] as int) [ContactID] 
From stg.[Auct_BJInsurance_FinalView]
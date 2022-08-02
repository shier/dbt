{{ config(materialized='table',schema='dbo')}}
Select
	cast([EmailAddress] as nvarchar(4000)) [EmailAddress],
	cast([IsActive] as int) [IsActive] 
From stg.[Auct_BidLimitOverageEmail_FinalView]
{{ config(materialized='table',schema='dbo')}}
Select
	cast([EmailAddress] as nvarchar(4000)) [EMAILADDRESS],
	cast([IsActive] as int) [ISACTIVE] 
From stg.[Auct_BidLimitOverageEmail_FinalView]
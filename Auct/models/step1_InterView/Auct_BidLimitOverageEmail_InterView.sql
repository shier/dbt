{{ config(materialized='view',schema='stg')}}
Select
	cast([EMAILADDRESS] as nvarchar(4000)) [EmailAddress],
	[ISACTIVE] [IsActive]
From stg.[Auct_BidLimitOverageEmail_Raw]

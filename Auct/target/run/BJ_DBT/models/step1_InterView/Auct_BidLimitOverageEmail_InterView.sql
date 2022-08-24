create view "dbo_stg"."Auct_BidLimitOverageEmail_InterView__dbt_tmp" as
    
Select
	cast([EMAILADDRESS] as nvarchar(4000)) [EmailAddress],
	[ISACTIVE] [IsActive]
From stg.[Auct_BidLimitOverageEmail_Raw]

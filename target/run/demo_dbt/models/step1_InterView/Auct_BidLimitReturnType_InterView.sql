create view "stg"."Auct_BidLimitReturnType_InterView__dbt_tmp" as
    
Select
	[BIDLIMITRETURNTYPEID] [BidLimitReturnTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[ACTIVE] [Active]
From stg.[Auct_BidLimitReturnType_Raw]

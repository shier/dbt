{{ config(materialized='view',schema='stg')}}
Select
	[BIDLIMITRETURNTYPEID] [BidLimitReturnTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[ACTIVE] [Active]
From stg.[Auct_BidLimitReturnType_Raw]

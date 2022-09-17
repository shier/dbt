{{ config(materialized='table',schema='dbo')}}
Select
	cast([BidLimitReturnTypeID] as int) [BIDLIMITRETURNTYPEID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Active] as bit) [ACTIVE] 
From stg.[Auct_BidLimitReturnType_FinalView]
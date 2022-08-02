{{ config(materialized='table',schema='dbo')}}
Select
	cast([BidLimitReturnTypeID] as int) [BidLimitReturnTypeid],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Active] as bit) [Active] 
From stg.[Auct_BidLimitReturnType_FinalView]
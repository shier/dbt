{{ config(materialized='table',schema='dbo')}}
Select
	cast([AuctionCompanyID] as int) [AuctionCompanyID],
	cast([CompanyID] as int) [CompanyID],
	cast([Logo] as nvarchar(4000)) [Logo],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_AuctionCompany_FinalView]
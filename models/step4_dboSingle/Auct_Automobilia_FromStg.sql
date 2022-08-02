{{ config(materialized='table',schema='dbo')}}
Select
	cast([AutomobiliaID] as int) [AutomobiliaID],
	cast([LotNumber] as numeric(18,2)) [Lotnumber],
	cast([AutomobiliaTypeID] as int) [AutomobiliaTypeID],
	cast([AutomobiliaConditionID] as int) [AutomobiliaConditionID],
	cast([ItemID] as int) [ItemID],
	cast([Description] as nvarchar(4000)) [Description],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([CustomerAccountID] as int) [CustomerAccountID],
	cast([AuctionID] as int) [AuctionID],
	cast([Comments] as nvarchar(4000)) [Comments] 
From stg.[Auct_Automobilia_FinalView]
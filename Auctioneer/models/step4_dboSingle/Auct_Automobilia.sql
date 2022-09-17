{{ config(materialized='table',schema='dbo')}}
Select
	cast([LotNumber] as numeric(18,2)) [LOTNUMBER],
	cast([AutomobiliaID] as int) [AUTOMOBILIAID],
	cast([AutomobiliaTypeID] as int) [AUTOMOBILIATYPEID],
	cast([AutomobiliaConditionID] as int) [AUTOMOBILIACONDITIONID],
	cast([ItemID] as int) [ITEMID],
	cast([Description] as nvarchar(4000)) [DESCRIPTION],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([CustomerAccountID] as int) [CUSTOMERACCOUNTID],
	cast([AuctionID] as int) [AUCTIONID],
	cast([Comments] as nvarchar(4000)) [COMMENTS] 
From stg.[Auct_Automobilia_FinalView]
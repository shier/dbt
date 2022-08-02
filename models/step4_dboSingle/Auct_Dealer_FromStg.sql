{{ config(materialized='table',schema='dbo')}}
Select
	cast([DealerID] as int) [DealerID],
	cast([DealerNumber] as nvarchar(4000)) [DealerNumber],
	cast([DealerState] as nvarchar(4000)) [DealerState],
	cast([ReSaleNumber] as nvarchar(4000)) [ReSaleNumber],
	cast([TaxIDNumber] as nvarchar(4000)) [TaxIDNumber],
	cast([TaxIDsTage] as nvarchar(4000)) [TaxIDsTage],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([DealerComment] as nvarchar(4000)) [DealerComment],
	cast([DealernumExpire] as DATETIME) [DealerNumExpire],
	cast([DeAlerTaxExpire] as DATETIME) [DeAlertaxExpire],
	cast([EmployeeIDNumber] as nvarchar(4000)) [EmployeeIDNumber] 
From stg.[Auct_Dealer_FinalView]
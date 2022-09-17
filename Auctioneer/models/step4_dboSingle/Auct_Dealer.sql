{{ config(materialized='table',schema='dbo')}}
Select
	cast([DealerID] as int) [DEALERID],
	cast([DealerNumber] as nvarchar(4000)) [DEALERNUMBER],
	cast([DealerState] as nvarchar(4000)) [DEALERSTATE],
	cast([ReSaleNumber] as nvarchar(4000)) [RESALENUMBER],
	cast([TaxIDNumber] as nvarchar(4000)) [TAXIDNUMBER],
	cast([TaxIDsTage] as nvarchar(4000)) [TAXIDSTAGE],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([DealerComment] as nvarchar(4000)) [DEALERCOMMENT],
	cast([DealernumExpire] as DATETIME) [DEALERNUMEXPIRE],
	cast([DeAlerTaxExpire] as DATETIME) [DEALERTAXEXPIRE],
	cast([EmployeeIDNumber] as nvarchar(4000)) [EMPLOYEEIDNUMBER] 
From stg.[Auct_Dealer_FinalView]
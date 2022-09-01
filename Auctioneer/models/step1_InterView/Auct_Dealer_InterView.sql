{{ config(materialized='view',schema='stg')}}
Select
	[DEALERID] [DealerID],
	cast([DEALERNUMBER] as nvarchar(4000)) [DealerNumber],
	cast([DEALERSTATE] as nvarchar(4000)) [DealerState],
	cast([RESALENUMBER] as nvarchar(4000)) [ReSaleNumber],
	cast([TAXIDNUMBER] as nvarchar(4000)) [TaxIDNumber],
	cast([TAXIDSTAGE] as nvarchar(4000)) [TaxIDsTage],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	cast([DEALERCOMMENT] as nvarchar(4000)) [DealerComment],
	[DEALERNUMEXPIRE] [DealernumExpire],
	[DEALERTAXEXPIRE] [DeAlerTaxExpire],
	cast([EMPLOYEEIDNUMBER] as nvarchar(4000)) [EmployeeIDNumber]
From stg.[Auct_Dealer_Raw]

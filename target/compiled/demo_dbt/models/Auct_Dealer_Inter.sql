
Select
	DEALERID DealerID,
	UPDATEEVENTID UpdateEventID,
	CREATED Created,
	DEALERNUMEXPIRE DealernumExpire,
	DEALERTAXEXPIRE DeAlerTaxExpire,
	cast(DEALERNUMBER as nvarchar(4000)) DealerNumber,
	cast(DEALERSTATE as nvarchar(4000)) DealerState,
	cast(RESALENUMBER as nvarchar(4000)) ReSaleNumber,
	cast(TAXIDNUMBER as nvarchar(4000)) TaxIDNumber,
	cast(TAXIDSTAGE as nvarchar(4000)) TaxIDsTage,
	cast(DEALERCOMMENT as nvarchar(4000)) DealerComment,
	cast(EMPLOYEEIDNUMBER as nvarchar(4000)) EmployeeIDNumber
From Auct_Dealer_Raw
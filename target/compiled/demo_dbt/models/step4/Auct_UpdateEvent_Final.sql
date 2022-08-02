
Select
	[UpdateEventID],[UsersID],[TableID],[ContactID],[AuctionID],[AddressTypeID],[AddressID],[Country],[DealerID],[AddressstatID],[DealerstatID],[ActionTime],[DealernumExpire],[DeAlerTaxExpire],[TaxIDNumber],[TaxIDsTage],[DealerComment],[City],[StateProvince],[PostalCode],[Careof],[DealerNumber],[DealerState],[OriginalData],[Address1],[Address2] 
From stg.[Auct_UpdateEvent_Incr] 
Where [dbt_valid_to] is null
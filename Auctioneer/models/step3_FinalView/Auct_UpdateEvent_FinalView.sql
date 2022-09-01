{{ config(materialized='view',schema='stg')}}
Select
	[UpdateEventID],[UsersID],[TableID],[OriginalData],[ActionTime],[ContactID],[AuctionID],[AddressTypeID],[AddressID],[Address1],[Address2],[City],[StateProvince],[PostalCode],[Country],[Careof],[DealerID],[DealerNumber],[DealerState],[TaxIDNumber],[TaxIDsTage],[DealerComment],[AddressstatID],[DealerstatID],[DealernumExpire],[DeAlerTaxExpire] 
From stg.[Auct_UpdateEvent_Incr] 
Where [dbt_valid_to] is null
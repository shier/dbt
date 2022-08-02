
  
  if object_id ('"stg"."Auct_UpdateEvent_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_UpdateEvent_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_UpdateEvent_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_UpdateEvent_Final__dbt_tmp"
    end


   EXEC('create view stg.Auct_UpdateEvent_Final__dbt_tmp_temp_view as
    
Select
	[UpdateEventID],[UsersID],[TableID],[OriginalData],[ActionTime],[ContactID],[AuctionID],[AddressTypeID],[AddressID],[Address1],[Address2],[City],[StateProvince],[PostalCode],[Country],[Careof],[DealerID],[DealerNumber],[DealerState],[TaxIDNumber],[TaxIDsTage],[DealerComment],[AddressstatID],[DealerstatID],[DealernumExpire],[DeAlerTaxExpire] 
From stg.[Auct_UpdateEvent_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."Auct_UpdateEvent_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_UpdateEvent_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_UpdateEvent_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_UpdateEvent_Final__dbt_tmp_temp_view"
    end



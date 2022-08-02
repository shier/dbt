
  
  if object_id ('"stg"."Auct_2018PurchaserList_tim_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_2018PurchaserList_tim_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_2018PurchaserList_tim_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_2018PurchaserList_tim_Final__dbt_tmp"
    end


   EXEC('create view stg.Auct_2018PurchaserList_tim_Final__dbt_tmp_temp_view as
    
Select
	[State],[ZipCode],[Country],[Optin],[AuctionID],[Source],[Last_Name],[Email],[Phone],[Address],[Address2],[City],[First_Name] 
From [Auct_2018PurchaserList_tim_Incr]
    ');

  CREATE TABLE "stg"."Auct_2018PurchaserList_tim_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_2018PurchaserList_tim_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_2018PurchaserList_tim_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_2018PurchaserList_tim_Final__dbt_tmp_temp_view"
    end



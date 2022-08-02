
  
  if object_id ('"stg"."Auct_BidderImportFromAdobe_temp_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_BidderImportFromAdobe_temp_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_BidderImportFromAdobe_temp_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_BidderImportFromAdobe_temp_Final__dbt_tmp"
    end


   EXEC('create view stg.Auct_BidderImportFromAdobe_temp_Final__dbt_tmp_temp_view as
    
Select
	[Recipient_1_Email],[Recipient_1_Role],[Agreement_Status],[Recipient_1_Name],[Created_Date] 
From [Auct_BidderImportFromAdobe_temp_Incr]
    ');

  CREATE TABLE "stg"."Auct_BidderImportFromAdobe_temp_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_BidderImportFromAdobe_temp_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_BidderImportFromAdobe_temp_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_BidderImportFromAdobe_temp_Final__dbt_tmp_temp_view"
    end



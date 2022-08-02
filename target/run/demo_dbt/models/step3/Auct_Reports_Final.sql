
  
  if object_id ('"stg"."Auct_Reports_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Reports_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Reports_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Reports_Final__dbt_tmp"
    end


   EXEC('create view stg.Auct_Reports_Final__dbt_tmp_temp_view as
    
Select
	[ReportsID],[ReportsCategory],[ReportsTitle],[ReportsFileName],[Auctionind],[Accountind],[Auctiondayind],[Paymentind],[Value1ind],[Value2ind],[Value3ind],[DateFromind],[Datetoind],[Value1Title],[Value1Example],[Value2Title],[Value2Example],[Value3Title],[Value3Example],[DateFromTitle],[DateFromExample],[DatetoTitle],[DatetoExample],[Description],[IsexcelExport],[IsSorTable],[Value4ind],[Value4Title],[Value4Example] 
From stg.[Auct_Reports_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."Auct_Reports_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Reports_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Reports_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Reports_Final__dbt_tmp_temp_view"
    end



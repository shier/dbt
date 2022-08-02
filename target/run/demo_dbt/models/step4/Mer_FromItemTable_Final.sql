
  
  if object_id ('"stg"."Mer_FromItemTable_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_FromItemTable_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_FromItemTable_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Mer_FromItemTable_Final__dbt_tmp"
    end


   EXEC('create view stg.Mer_FromItemTable_Final__dbt_tmp_temp_view as
    
Select
	[TimeStamp],[No_],[Description],[Search_Description],[Description_2],[Base_Unit_Of_Measure],[Price_Unit_ConVersion],[Type],[Inventory_Posting_Group],[Item_Category_Code],[No__2] 
From [Mer_FromItemTable_Incr]
    ');

  CREATE TABLE "stg"."Mer_FromItemTable_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_FromItemTable_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Mer_FromItemTable_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_FromItemTable_Final__dbt_tmp_temp_view"
    end



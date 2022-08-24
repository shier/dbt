
      
  
  if object_id ('"stg"."Mer_FromItemTable_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_FromItemTable_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_FromItemTable_Incr"','U') is not null
    begin
    drop table "stg"."Mer_FromItemTable_Incr"
    end


   EXEC('create view stg.Mer_FromItemTable_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''SHA2_256'', concat([TimeStamp], [Type], [Inventory_Posting_Group], [Item_Category_Code], [No_], [Description], [Search_Description], [Description_2], [Base_Unit_Of_Measure], [Price_Unit_ConVersion], Cast([No__2] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Mer_FromItemTable_InterView]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Mer_FromItemTable_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_FromItemTable_Incr_temp_view)

   
  
  if object_id ('"stg"."Mer_FromItemTable_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_FromItemTable_Incr_temp_view"
    end



  
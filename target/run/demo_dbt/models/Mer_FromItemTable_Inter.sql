
  
  if object_id ('"stg"."Mer_FromItemTable_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_FromItemTable_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_FromItemTable_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Mer_FromItemTable_Inter__dbt_tmp"
    end


   EXEC('create view stg.Mer_FromItemTable_Inter__dbt_tmp_temp_view as
    
Select
	cast(timestamp as nvarchar(4000)) TimeStamp,
	cast(No_ as nvarchar(4000)) No_,
	cast(Description as nvarchar(4000)) Description,
	cast(Search_Description as nvarchar(4000)) Search_Description,
	cast(Description_2 as nvarchar(4000)) Description_2,
	cast(Base_Unit_of_Measure as nvarchar(4000)) Base_Unit_Of_Measure,
	cast(Price_Unit_Conversion as nvarchar(4000)) Price_Unit_ConVersion,
	cast(Type as nvarchar(4000)) Type,
	cast(Inventory_Posting_Group as nvarchar(4000)) Inventory_Posting_Group,
	cast(Item_Category_Code as nvarchar(4000)) Item_Category_Code,
	No__2 No__2
From Mer_FromItemTable_Raw
    ');

  CREATE TABLE "stg"."Mer_FromItemTable_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_FromItemTable_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Mer_FromItemTable_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_FromItemTable_Inter__dbt_tmp_temp_view"
    end



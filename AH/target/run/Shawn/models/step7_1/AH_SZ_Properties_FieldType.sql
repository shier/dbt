
  
  if object_id ('"stg"."AH_SZ_Properties_FieldType__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_SZ_Properties_FieldType__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_SZ_Properties_FieldType__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_SZ_Properties_FieldType__dbt_tmp"
    end


   EXEC('create view stg.AH_SZ_Properties_FieldType__dbt_tmp_temp_view as
    

select ''BoolNativeValue'' as column_name, ''bit'' as data_type union all
select ''StringNativeValue'' as column_name, ''nvarchar(4000)'' as data_type union all
select ''IntNativeValue'' as column_name, ''int'' as data_type union all
select ''DecimalNativeValue'' as column_name, ''decimal(10,2)'' as data_type union all
select ''DateTimeNativeValue'' as column_name, ''datetime'' as data_type union all
select ''EnumNativeValue'' as column_name, ''nvarchar(200)'' as data_type
    ');

  CREATE TABLE "stg"."AH_SZ_Properties_FieldType__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_SZ_Properties_FieldType__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_SZ_Properties_FieldType__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_SZ_Properties_FieldType__dbt_tmp_temp_view"
    end



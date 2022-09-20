
  
  if object_id ('"stg"."SZ_AH_Properties_CustomFields_Lookup__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."SZ_AH_Properties_CustomFields_Lookup__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."SZ_AH_Properties_CustomFields_Lookup__dbt_tmp"','U') is not null
    begin
    drop table "stg"."SZ_AH_Properties_CustomFields_Lookup__dbt_tmp"
    end


   EXEC('create view stg.SZ_AH_Properties_CustomFields_Lookup__dbt_tmp_temp_view as
    
select 
    a.*, 
    c.name,
    b.data_type,
           case when b.data_type = ''nvarchar(4000)'' then c.name + '' nvarchar(4000)''
                when b.data_type = ''nvarchar(200)'' then c.name + '' nvarchar(200)''
                when b.data_type = ''decimal(10,2)'' then c.name + '' decimal(11,2)''
                when b.data_type = ''bit'' then c.name + '' bit''
                when b.data_type = ''int'' then c.name + '' bigint''
                when b.data_type = ''datetime'' then c.name + '' datetime''
           end  as col_definition_str,       
           case when b.data_type = ''nvarchar(4000)'' then ''cast('' + c.name + '' as nvarchar(4000)) as '' + c.name 
                when b.data_type = ''nvarchar(200)'' then ''cast('' + c.name + '' as nvarchar(200)) as '' + c.name 
                when b.data_type = ''decimal(10,2)'' then ''cast(cast('' + c.name + '' as nvarchar(10)) as decimal(11,2)) as '' + c.name
                when b.data_type = ''bit'' then ''cast(cast('' + c.name + '' as nvarchar(1)) as bit) as '' + c.name 
                when b.data_type = ''int'' then ''cast(cast('' + c.name + '' as nvarchar(9)) as bigint) as '' + c.name 
                when b.data_type = ''datetime'' then ''cast(cast('' + c.name + '' as nvarchar(23)) as datetime) as '' + c.name 
            end  as col_type_cast
from stg.SZ_AH_Properties_Value_ColumnMapping a
            left join stg.SZ_AH_Properties_FieldType b 
                on a.value_columnname = b.column_name
            left join stg.SZ_AH_Properties_FieldIDs c
                on a.customfieldid = c.id
where a.customfieldid not in (9895950, 9888915, 6529375) -- remove duplicates
    ');

  CREATE TABLE "stg"."SZ_AH_Properties_CustomFields_Lookup__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.SZ_AH_Properties_CustomFields_Lookup__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."SZ_AH_Properties_CustomFields_Lookup__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."SZ_AH_Properties_CustomFields_Lookup__dbt_tmp_temp_view"
    end



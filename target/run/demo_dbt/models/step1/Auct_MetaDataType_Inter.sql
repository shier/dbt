
  
  if object_id ('"stg"."Auct_MetaDataType_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_MetaDataType_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_MetaDataType_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_MetaDataType_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_MetaDataType_Inter__dbt_tmp_temp_view as
    
Select
	[METADATATYPEID] [MetaDataTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[ACTIVE] [Active],
	cast([TABLENAME] as nvarchar(4000)) [TableName],
	cast([COLUMNNAME] as nvarchar(4000)) [ColumnName],
	cast([DISPLAYCOLUMN] as nvarchar(4000)) [DisplayColumn]
From stg.[Auct_MetaDataType_Raw]
    ');

  CREATE TABLE "stg"."Auct_MetaDataType_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_MetaDataType_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_MetaDataType_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_MetaDataType_Inter__dbt_tmp_temp_view"
    end



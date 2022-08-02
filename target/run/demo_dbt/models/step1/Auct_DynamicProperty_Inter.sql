
  
  if object_id ('"stg"."Auct_DynamicProperty_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_DynamicProperty_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_DynamicProperty_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_DynamicProperty_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_DynamicProperty_Inter__dbt_tmp_temp_view as
    
Select
	[DYNAMICPROPERTYID] [DynamicPropertyID],
	cast([NAME] as nvarchar(4000)) [Name],
	cast([DISPLAYNAME] as nvarchar(4000)) [DisplayName],
	cast([DATACLASS] as nvarchar(4000)) [DataClass]
From stg.[Auct_DynamicProperty_Raw]
    ');

  CREATE TABLE "stg"."Auct_DynamicProperty_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_DynamicProperty_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_DynamicProperty_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_DynamicProperty_Inter__dbt_tmp_temp_view"
    end



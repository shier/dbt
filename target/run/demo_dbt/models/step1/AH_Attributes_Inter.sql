
  
  if object_id ('"stg"."AH_Attributes_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Attributes_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_Attributes_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_Attributes_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_Attributes_Inter__dbt_tmp_temp_view as
    
Select
	[Id] [ID],
	cast([Context] as nvarchar(4000)) [ConText],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Value] as nvarchar(4000)) [Value],
	cast([EditMode] as nvarchar(4000)) [EditMode],
	cast([Type] as nvarchar(4000)) [Type],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn]
From stg.[AH_Attributes_Raw]
    ');

  CREATE TABLE "stg"."AH_Attributes_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_Attributes_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_Attributes_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Attributes_Inter__dbt_tmp_temp_view"
    end



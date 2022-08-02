
  
  if object_id ('"stg"."Auct_Clip_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Clip_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Clip_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Clip_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Clip_Inter__dbt_tmp_temp_view as
    
Select
	[CLIPID] [ClipID],
	[CLIPTYPEID] [ClipTypeID],
	[MULTIMEDIAID] [MultiMediaID],
	[ACTIVE] [Active],
	cast([NAME] as nvarchar(4000)) [Name],
	cast([DESCRIPTION] as nvarchar(4000)) [Description]
From stg.[Auct_Clip_Raw]
    ');

  CREATE TABLE "stg"."Auct_Clip_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Clip_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Clip_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Clip_Inter__dbt_tmp_temp_view"
    end



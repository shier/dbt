
  
  if object_id ('"stg"."Auct_SysArticleColumns_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SysArticleColumns_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_SysArticleColumns_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_SysArticleColumns_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_SysArticleColumns_Inter__dbt_tmp_temp_view as
    
Select
	[artid] [ArtID],
	[colid] [ColID],
	[is_udt] [Is_udt],
	[is_xml] [Is_xml],
	[is_max] [Is_Max]
From stg.[Auct_SysArticleColumns_Raw]
    ');

  CREATE TABLE "stg"."Auct_SysArticleColumns_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_SysArticleColumns_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_SysArticleColumns_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SysArticleColumns_Inter__dbt_tmp_temp_view"
    end



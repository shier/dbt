
  
  if object_id ('"dbo"."Auct_ContentMetaData__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ContentMetaData__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_ContentMetaData__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_ContentMetaData__dbt_tmp"
    end


   EXEC('create view dbo.Auct_ContentMetaData__dbt_tmp_temp_view as
    
Select
	cast([ContentID] as int) [CONTENTID],
	cast([MetaDataID] as int) [METADATAID] 
From stg.[Auct_ContentMetaData_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_ContentMetaData__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_ContentMetaData__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_ContentMetaData__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ContentMetaData__dbt_tmp_temp_view"
    end




  
  if object_id ('"dbo"."Mer_Clovercache_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Mer_Clovercache_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Mer_Clovercache_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Mer_Clovercache_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Mer_Clovercache_FromStg__dbt_tmp_temp_view as
    
Select
	cast([ID] as varchar(100)) [ID],
	cast([MerchantID] as varchar(100)) [MerchantID],
	cast([CacheType] as varchar(300)) [CacheType],
	cast([Value] as varchar(128)) [Value] 
From stg.[Mer_Clovercache_FinalView]
    ');

  CREATE TABLE "dbo"."Mer_Clovercache_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Mer_Clovercache_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Mer_Clovercache_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Mer_Clovercache_FromStg__dbt_tmp_temp_view"
    end



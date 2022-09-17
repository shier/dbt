
  
  if object_id ('"dbo"."CC_Tags__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_Tags__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_Tags__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_Tags__dbt_tmp"
    end


   EXEC('create view dbo.CC_Tags__dbt_tmp_temp_view as
    
Select
	cast([TagName] as nvarchar(4000)) [TagName],
	cast([Slug] as nvarchar(4000)) [Slug],
	cast([TagPK] as int) [TagPK] 
From stg.[CC_Tags_FinalView]
    ');

  CREATE TABLE "dbo"."CC_Tags__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_Tags__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_Tags__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_Tags__dbt_tmp_temp_view"
    end



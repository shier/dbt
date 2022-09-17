
  
  if object_id ('"dbo"."CC_ListingSources__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_ListingSources__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_ListingSources__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_ListingSources__dbt_tmp"
    end


   EXEC('create view dbo.CC_ListingSources__dbt_tmp_temp_view as
    
Select
	cast([ListingSourcePK] as int) [ListingSourcePK],
	cast([Description] as nvarchar(50)) [ListingSource] 
From stg.[CC_ListingSources_FinalView]
    ');

  CREATE TABLE "dbo"."CC_ListingSources__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_ListingSources__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_ListingSources__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_ListingSources__dbt_tmp_temp_view"
    end



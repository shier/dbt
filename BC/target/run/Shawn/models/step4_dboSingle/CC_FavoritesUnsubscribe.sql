
  
  if object_id ('"dbo"."CC_FavoritesUnsubscribe__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_FavoritesUnsubscribe__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_FavoritesUnsubscribe__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_FavoritesUnsubscribe__dbt_tmp"
    end


   EXEC('create view dbo.CC_FavoritesUnsubscribe__dbt_tmp_temp_view as
    
Select
	cast([DataTokenID] as nvarchar(4000)) [DataTokenID],
	cast([FavoritesUnsubscribePK] as int) [FavoritesUnsubscribePK],
	cast([UserFK] as int) [UserFK],
	cast([UnsubscribeDateUTC] as datetime) [UnsubscribeDateUTC] 
From stg.[CC_FavoritesUnsubscribe_FinalView]
    ');

  CREATE TABLE "dbo"."CC_FavoritesUnsubscribe__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_FavoritesUnsubscribe__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_FavoritesUnsubscribe__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_FavoritesUnsubscribe__dbt_tmp_temp_view"
    end



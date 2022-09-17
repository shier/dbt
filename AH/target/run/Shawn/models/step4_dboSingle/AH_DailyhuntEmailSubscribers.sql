
  
  if object_id ('"dbo"."AH_DailyhuntEmailSubscribers__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_DailyhuntEmailSubscribers__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_DailyhuntEmailSubscribers__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_DailyhuntEmailSubscribers__dbt_tmp"
    end


   EXEC('create view dbo.AH_DailyhuntEmailSubscribers__dbt_tmp_temp_view as
    
Select
	cast([Email] as nvarchar(4000)) [Email],
	cast([FirstName] as nvarchar(4000)) [FirstName],
	cast([LastName] as nvarchar(4000)) [LastName],
	cast([ID] as int) [ID],
	cast([ZipCode] as int) [ZipCode],
	cast([ASenthusiast] as bit) [ASenthusiast],
	cast([AsBidder] as bit) [AsBidder],
	cast([AsConsignor] as bit) [AsConsignor] 
From stg.[AH_DailyhuntEmailSubscribers_FinalView]
    ');

  CREATE TABLE "dbo"."AH_DailyhuntEmailSubscribers__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_DailyhuntEmailSubscribers__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_DailyhuntEmailSubscribers__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_DailyhuntEmailSubscribers__dbt_tmp_temp_view"
    end



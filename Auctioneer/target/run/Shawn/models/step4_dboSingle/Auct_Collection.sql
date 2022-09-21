
  
  if object_id ('"dbo"."Auct_Collection__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Collection__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Collection__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Collection__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Collection__dbt_tmp_temp_view as
    
Select
	cast([CollectionID] as int) [COLLECTIONID],
	cast([Name] as nvarchar(512)) [NAME],
	cast([Description] as nvarchar(512)) [DESCRIPTION],
	cast([AuctionID] as int) [AUCTIONID],
	cast([Active] as bit) [ACTIVE] 
From stg.[Auct_Collection_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Collection__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Collection__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Collection__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Collection__dbt_tmp_temp_view"
    end



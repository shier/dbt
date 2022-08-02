
      
  
  if object_id ('"dbo"."DBT_Auct_Bidder_Target_temp_view"','V') is not null
    begin
    drop view "dbo"."DBT_Auct_Bidder_Target_temp_view"
    end


   
    
  if object_id ('"dbo"."DBT_Auct_Bidder_Target"','U') is not null
    begin
    drop table "dbo"."DBT_Auct_Bidder_Target"
    end


   EXEC('create view dbo.DBT_Auct_Bidder_Target_temp_view as
    

with hashData as (
  select 
    HASHBYTES(''MD5'', concat(cast(ApprovedByUserID as varchar),''|'',cast(Comments as varchar))) as hashValue,
    CURRENT_TIMESTAMP as effectiveTime,
    * 
  From DBT_Auct_Bidder_Source
  -- From "DedicatedSQLpoolBJ"."parquet"."silver/AuctHQ/dbo_BIDDER.parquet"
  -- From [silver/AuctHQ/dbo_BIDDER.parquet]
)

select * from hashData

    ');

  CREATE TABLE "dbo"."DBT_Auct_Bidder_Target"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.DBT_Auct_Bidder_Target_temp_view)

   
  
  if object_id ('"dbo"."DBT_Auct_Bidder_Target_temp_view"','V') is not null
    begin
    drop view "dbo"."DBT_Auct_Bidder_Target_temp_view"
    end



  
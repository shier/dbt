
  
  if object_id ('"dbo"."Auth_Bidder_load__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auth_Bidder_load__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auth_Bidder_load__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auth_Bidder_load__dbt_tmp"
    end


   EXEC('create view dbo.Auth_Bidder_load__dbt_tmp_temp_view as
    select *,HASHBYTES(''MD5'', concat(cast(BidderID as varchar),''|'',cast(BidderStatusID as varchar))) as hashValue from DBT_Auct_Bidder_Source
    ');

  CREATE TABLE "dbo"."Auth_Bidder_load__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auth_Bidder_load__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auth_Bidder_load__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auth_Bidder_load__dbt_tmp_temp_view"
    end



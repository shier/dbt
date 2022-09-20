
  
  if object_id ('"dbo"."BC_BJAuctionCompany_DimensionSet_DM__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."BC_BJAuctionCompany_DimensionSet_DM__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."BC_BJAuctionCompany_DimensionSet_DM__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."BC_BJAuctionCompany_DimensionSet_DM__dbt_tmp"
    end


   EXEC('create view dbo.BC_BJAuctionCompany_DimensionSet_DM__dbt_tmp_temp_view as
    
SELECT
    [DimensionSetID],
    [DimensionCode],
    [DimensionValueCode],
    [DimensionValueID],
    [GlobalDimensionNo_]
from [stg].[BC_BJAuctionCompany_DimensionSetEntry_0972_FinalView]
    ');

  CREATE TABLE "dbo"."BC_BJAuctionCompany_DimensionSet_DM__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.BC_BJAuctionCompany_DimensionSet_DM__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."BC_BJAuctionCompany_DimensionSet_DM__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."BC_BJAuctionCompany_DimensionSet_DM__dbt_tmp_temp_view"
    end



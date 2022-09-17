
  
  if object_id ('"dbo"."BC_BJAuctionCompany_DimensionSetEntry_0972__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."BC_BJAuctionCompany_DimensionSetEntry_0972__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."BC_BJAuctionCompany_DimensionSetEntry_0972__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."BC_BJAuctionCompany_DimensionSetEntry_0972__dbt_tmp"
    end


   EXEC('create view dbo.BC_BJAuctionCompany_DimensionSetEntry_0972__dbt_tmp_temp_view as
    
Select
	cast([DimensionCode] as nvarchar(4000)) [DimensionCode],
	cast([GlobalDimensionNo_] as int) [GlobalDimensionNo_],
	cast([DimensionSetID] as int) [DimensionSetID],
	cast([$systemCreatedAt] as datetime) [$systemCreatedAt],
	cast([$systemCreatedBy] as nvarchar(4000)) [$systemCreatedBy],
	cast([DimensionValueCode] as nvarchar(4000)) [DimensionValueCode],
	cast([timestamp] as varbinary(8000)) [timestamp],
	cast([DimensionValueID] as int) [DimensionValueID],
	cast([$systemModifiedAt] as datetime) [$systemModifiedAt],
	cast([$systemId] as nvarchar(4000)) [$systemId],
	cast([$systemModifiedBy] as nvarchar(4000)) [$systemModifiedBy] 
From stg.[BC_BJAuctionCompany_DimensionSetEntry_0972_FinalView]
    ');

  CREATE TABLE "dbo"."BC_BJAuctionCompany_DimensionSetEntry_0972__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.BC_BJAuctionCompany_DimensionSetEntry_0972__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."BC_BJAuctionCompany_DimensionSetEntry_0972__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."BC_BJAuctionCompany_DimensionSetEntry_0972__dbt_tmp_temp_view"
    end



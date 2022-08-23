
  
  if object_id ('"dbo"."CC_Auction_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_Auction_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_Auction_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_Auction_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.CC_Auction_FromStg__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [ID],
	cast([Name] as nvarchar(100)) [Name],
	cast([Description] as nvarchar(4000)) [Description],
	cast([Location] as nvarchar(200)) [Location],
	cast([DateInfo] as nvarchar(100)) [DateInfo],
	cast([SiteURL] as nvarchar(2048)) [SiteURL],
	cast([ContactURL] as nvarchar(2048)) [ContactURL],
	cast([BidderURL] as nvarchar(2048)) [BidderURL],
	cast([SellerURL] as nvarchar(2048)) [SellerURL],
	cast([ThuMbnailURL] as nvarchar(2048)) [ThumbnailURL],
	cast([ImageURL] as nvarchar(2048)) [ImageURL],
	cast([WordPressTag] as nvarchar(100)) [WordPressTag],
	cast([CreateDate] as datetime) [Created],
	cast([ModifyDate] as datetime) [ModifiedDate],
	cast([CompanyID] as int) [CompanyId],
	cast([IsActive] as bit) [IsActive] 
From stg.[CC_Auction_FinalView]
    ');

  CREATE TABLE "dbo"."CC_Auction_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_Auction_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_Auction_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_Auction_FromStg__dbt_tmp_temp_view"
    end



  
  if object_id ('"stg"."CC_Auction_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_Auction_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_Auction_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_Auction_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_Auction_Inter__dbt_tmp_temp_view as
    
Select
	cast(Name as nvarchar(4000)) Name,
	cast(Description as nvarchar(4000)) Description,
	cast(Location as nvarchar(4000)) Location,
	cast(ImageUrl as nvarchar(4000)) ImageURL,
	cast(WordPressTag as nvarchar(4000)) WordPressTag,
	cast(DateInfo as nvarchar(4000)) DateInfo,
	cast(SiteUrl as nvarchar(4000)) SiteURL,
	cast(ContactUrl as nvarchar(4000)) ContactURL,
	cast(BidderUrl as nvarchar(4000)) BidderURL,
	cast(SellerUrl as nvarchar(4000)) SellerURL,
	cast(ThumbnailUrl as nvarchar(4000)) ThuMbnailURL,
	CreateDate CreateDate,
	ModifyDate ModifyDate,
	Id ID,
	CompanyId CompanyID,
	IsActive IsActive
From CC_Auction_Raw
    ');

  CREATE TABLE "stg"."CC_Auction_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_Auction_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_Auction_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_Auction_Inter__dbt_tmp_temp_view"
    end



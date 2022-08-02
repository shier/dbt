
  
  if object_id ('"stg"."CC_BuyerInquiry_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_BuyerInquiry_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_BuyerInquiry_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_BuyerInquiry_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_BuyerInquiry_Inter__dbt_tmp_temp_view as
    
Select
	CreateDate CreateDate,
	ModifyDate ModifyDate,
	EmailSentUTC EmailSentUTC,
	WantsRrcInfo WantsrrcInfo,
	IsActive IsActive,
	EmailProcessed EmailProcessed,
	CopyProcessed CopyProcessed,
	FollowupProcessed FollowupProcessed,
	ListingId ListingID,
	EmailFilterCodeId EmailFilterCodeID,
	Id ID,
	WantsNewsletter WantsNewsLetter,
	cast(UserAgent as nvarchar(4000)) UserAgent,
	cast(Browser as nvarchar(4000)) Browser,
	cast(FirstName as nvarchar(4000)) FirstName,
	cast(LastName as nvarchar(4000)) LastName,
	cast(Email as nvarchar(4000)) Email,
	cast(Phone as nvarchar(4000)) Phone,
	cast(Message as nvarchar(4000)) Message,
	cast(IpAddress as nvarchar(4000)) IpAddress
From CC_BuyerInquiry_Raw
    ');

  CREATE TABLE "stg"."CC_BuyerInquiry_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_BuyerInquiry_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_BuyerInquiry_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_BuyerInquiry_Inter__dbt_tmp_temp_view"
    end



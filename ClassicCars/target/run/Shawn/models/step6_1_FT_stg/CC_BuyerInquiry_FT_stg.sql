
  
  if object_id ('"stg"."CC_BuyerInquiry_FT_stg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_BuyerInquiry_FT_stg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_BuyerInquiry_FT_stg__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_BuyerInquiry_FT_stg__dbt_tmp"
    end


   EXEC('create view stg.CC_BuyerInquiry_FT_stg__dbt_tmp_temp_view as
    
SELECT
	[ID] AS [BuyerInquiryID],
	[ListingID],
	[IPAddress],
	[Browser],
	[FirstName],
	[LastName],
	[Email],
	[Phone] AS [PhoneNumber],
	[Message],
	[WantsNewsletter],
	[WantsRrcInfo],
	[UserAgent],
	[CreateDate] AS [Created],
	[ModifyDate] AS [ModifiedDate],
	[IsActive],
	[EmailFilterCodeID],
	[EmailProcessed] AS [IsEmailProcessed],
	[CopyProcessed] AS [IsCopyProcessed],
	[EmailSentUTC] AS [EmailSentDateTimeUTC],
	[FollowupProcessed] AS [IsFollowupProcessed]
FROM [stg].[CC_BuyerInquiry_FinalView]
    ');

  CREATE TABLE "stg"."CC_BuyerInquiry_FT_stg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_BuyerInquiry_FT_stg__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_BuyerInquiry_FT_stg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_BuyerInquiry_FT_stg__dbt_tmp_temp_view"
    end



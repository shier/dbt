{{ config(materialized='table',schema='dbo')}}

with updateData as (
    select 
   		FTstg.[BuyerInquiryID],
		FTstg.[ListingID],
		FTtmp.[Car_Skey],
		FTstg.[IPAddress],
		FTstg.[Browser],
		FTstg.[FirstName],
		FTstg.[LastName],
		FTstg.[Email],
		FTstg.[PhoneNumber],
		FTstg.[Message],
		FTstg.[WantsNewsletter],
		FTstg.[WantsRrcInfo],
		FTstg.[UserAgent],
		FTstg.[Created],
		FTstg.[ModifiedDate],
		FTstg.[IsActive],
		FTstg.[EmailFilterCodeID],
		FTstg.[IsEmailProcessed],
		FTstg.[IsCopyProcessed],
		FTstg.[EmailSentDateTimeUTC],
		FTstg.[IsFollowupProcessed]
    from stg.CC_BuyerInquiry_FT_tmp as FTtmp 
    join stg.CC_BuyerInquiry_FT_stg as FTstg 
    on FTstg.BuyerInquiryID=FTtmp.BuyerInquiryID
),
insertData as (
    select 
        [BuyerInquiryID], 
		[ListingID], 
		[Car_Skey], 
		[IPAddress], 
		[Browser], 
		[FirstName], 
		[LastName], 
		[Email], 
		[PhoneNumber], 
		[Message], 
		[WantsNewsletter], 
		[WantsRrcInfo], 
		[UserAgent], 
		[Created], 
		[ModifiedDate], 
		[IsActive], 
		[EmailFilterCodeID], 
		[IsEmailProcessed], 
		[IsCopyProcessed], 
		[EmailSentDateTimeUTC], 
		[IsFollowupProcessed] 
    from stg.CC_BuyerInquiry_FT_tmp
    where BuyerInquiryID not in (select  BuyerInquiryID from stg.CC_BuyerInquiry_FT_stg)
)
SELECT
    [BuyerInquiryID], 
    [ListingID], 
    [Car_Skey], 
    [IPAddress], 
    [Browser], 
    [FirstName], 
    [LastName], 
    [Email], 
    [PhoneNumber], 
    [Message], 
    [WantsNewsletter], 
    [WantsRrcInfo], 
    [UserAgent], 
    [Created], 
    [ModifiedDate], 
    [IsActive], 
    [EmailFilterCodeID], 
    [IsEmailProcessed], 
    [IsCopyProcessed], 
    [EmailSentDateTimeUTC], 
    [IsFollowupProcessed] 
from updateData

union all

SELECT
      [BuyerInquiryID], 
    [ListingID], 
    [Car_Skey], 
    [IPAddress], 
    [Browser], 
    [FirstName], 
    [LastName], 
    [Email], 
    [PhoneNumber], 
    [Message], 
    [WantsNewsletter], 
    [WantsRrcInfo], 
    [UserAgent], 
    [Created], 
    [ModifiedDate], 
    [IsActive], 
    [EmailFilterCodeID], 
    [IsEmailProcessed], 
    [IsCopyProcessed], 
    [EmailSentDateTimeUTC], 
    [IsFollowupProcessed] 
from insertData
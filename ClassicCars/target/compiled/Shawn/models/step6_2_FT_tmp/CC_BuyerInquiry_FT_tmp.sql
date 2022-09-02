

WITH BuyerInquiry_CTE AS (
    SELECT 
        buyerinquiry.[BuyerInquiryID], 
        buyerinquiry.[ListingID], 
        listing.[Car_Skey], 
        -- buyer.[PotentialBuyer_Skey], 
        buyerinquiry.[IPAddress], 
        buyerinquiry.[Browser], 
        buyerinquiry.[FirstName], 
        buyerinquiry.[LastName], 
        buyerinquiry.[Email], 
        buyerinquiry.[PhoneNumber], 
        buyerinquiry.[Message], 
        buyerinquiry.[WantsNewsletter], 
        buyerinquiry.[WantsRrcInfo], 
        buyerinquiry.[UserAgent], 
        buyerinquiry.[Created], 
        buyerinquiry.[ModifiedDate], 
        buyerinquiry.[IsActive], 
        buyerinquiry.[EmailFilterCodeID], 
        buyerinquiry.[IsEmailProcessed], 
        buyerinquiry.[IsCopyProcessed], 
        buyerinquiry.[EmailSentDateTimeUTC], 
        buyerinquiry.[IsFollowupProcessed] 
    FROM [stg].[CC_BuyerInquiry_FT_stg] AS buyerinquiry
    -- FOR [Car_Skey]
    LEFT JOIN [stg].[CC_Listing_FT_stg] AS listing 
        ON buyerinquiry.[ListingID]=listing.[ListingID]

	-- -- FOR [PotentialBuyer_Skey]
	-- LEFT JOIN [test].[CC_PotentialBuyer_DM] AS buyer 
	-- 	ON buyerinquiry.[Email]=buyer.[Email]
	-- WHERE [IsCurrent]=1

    -- FOR [Customer_Skey]
    -- LEFT JOIN [test].[CC_Customer_Archive_DM] cxarchive
        -- ON listing.[CompanyID]=cxarchive.[CompanyID]
		-- ON buyerinquiry.[Email]=cxarchive.[Email]
		-- 	AND buyerinquiry.[PhoneNumber]=cxarchive.[PhoneNumber]
	-- WHERE [IsCurrent]=1
	-- WHERE buyerinquiry.[Created]>=cxarchive.[Created]
)
SELECT 
    [BuyerInquiryID], 
	[ListingID], 
	[Car_Skey], 
	-- [PotentialBuyer_Skey], 
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
FROM BuyerInquiry_CTE
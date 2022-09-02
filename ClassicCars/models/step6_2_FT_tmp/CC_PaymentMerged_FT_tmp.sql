{{ config(materialized='table',schema='stg')}}

WITH CC_PaymentMerged_CTE AS (
    SELECT
    	-- [OldPaymentID],
        -- [NewPaymentID],
        pymt.[PaymentID], 
        pymt.[Created], 
        pymt.[ModifiedDate], 
        pymt.[IsActive], 
        pymt.[UserID], 
        seller.[Seller_Skey], 
        pymt.[PaymentTypeID], 
        pymtty.[PaymentType_Skey], 
        pymt.[CouponID], 
        coupon.[Coupon_Skey], 
        pymt.[OrderTotal], 
        pymt.[DiscountAmount], 
        pymt.[ChargeAmount], 
        pymt.[IsApproved], 
        pymt.[IsSuccess],  
        pymt.[CardName], 
        pymt.[CardAddress], 
        pymt.[CardCity], 
        pymt.[CardState], 
        pymt.[CardCountry], 
        pymt.[CardExpirationYear], 
        pymt.[CardExpirationMonth], 
        pymt.[CardLastFourDigit], 
        pymt.[Token], 
        pymt.[PayerID], 
        pymt.[AuthorizationCode], 
        pymt.[ResponseCode], 
        pymt.[ResponseReasonCode], 
        pymt.[TransactionID], 
        pymt.[ErrorCode], 
        pymt.[ErrorTransactionID], 
        pymt.[PaymentStatus], 
        pymt.[FirstName], 
        pymt.[LastName], 
        pymt.[Address1], 
        pymt.[Address2],  -- EMPTY COLUMN
        pymt.[City], 
        pymt.[State], 
        pymt.[PostalCode], 
        pymt.[Email], 
        -- pymt.[PhoneNumber],  -- EMPTY COLUMN
        pymt.[CustomerIPAddress], 
        pymt.[LineItemDescription], 
        pymt.[GatewayMessage]
    FROM [stg].[CC_PaymentMerged_FT_stg] AS pymt 
    -- FOR [PaymentType_Skey]
    LEFT JOIN [dbo].[CC_PaymentType_DM] AS pymtty 
        ON pymt.[PaymentTypeID]=pymtty.[PaymentType_Skey]
    -- FOR [Coupon_Skey]
    LEFT JOIN [dbo].[CC_Coupon_DM] AS coupon
        ON pymt.[CouponID]=coupon.[Coupon_Skey]
    -- FOR [Seller_Skey]
	LEFT JOIN [stg].[CC_User_FinalView] AS users
		ON pymt.[UserID]=users.[Id]
	LEFT JOIN [dbo].[CC_Seller_DM] AS seller 
		ON users.[CompanyId]=seller.[Seller_Skey]

	-- FOR [Customer_Skey]
    -- LEFT JOIN [test].[CC_Customer_Archive_DM] cxarchive 
    --     ON pymt.[UserID]=cxarchive.[UserID]
	-- WHERE [IsCurrent]=1
	-- WHERE pymt.[Created]>=cxarchive.[Created] AND pymt.[ModifiedDate]>=cxarchive.[ModifiedDate] 
    -- WHERE pymt.[Created] BETWEEN cxarchive.[Created] AND cxarchive.[ModifiedDate]
)
SELECT
	[PaymentID],
	[Created],
	[ModifiedDate],
	[IsActive],
	[UserID],
	[Seller_Skey],
	[PaymentTypeID],
	[PaymentType_Skey],
	[CouponID],
	[Coupon_Skey],
	[OrderTotal],
	[DiscountAmount],
	[ChargeAmount],
	[IsApproved],
	[IsSuccess],
	[CardName],
	[CardAddress],
	[CardCity],
	[CardState],
	[CardCountry],
	[CardExpirationYear],
	[CardExpirationMonth],
	[CardLastFourDigit],
	[Token],
	[PayerID],
	[AuthorizationCode],
	[ResponseCode],
	[ResponseReasonCode],
	[TransactionID],
	[ErrorCode],
	[ErrorTransactionID],
	[PaymentStatus],
	[FirstName],
	[LastName],
	[Address1],
	[Address2],
	[City],
	[State],
	[PostalCode],
	[Email],
	[CustomerIPAddress],
	[LineItemDescription],
	[GatewayMessage]
FROM CC_PaymentMerged_CTE
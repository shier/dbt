
  
  if object_id ('"dbo"."CC_PaymentMerged_FT__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_PaymentMerged_FT__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_PaymentMerged_FT__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_PaymentMerged_FT__dbt_tmp"
    end


   EXEC('create view dbo.CC_PaymentMerged_FT__dbt_tmp_temp_view as
    

with updateData as (
    select 
        FTstg.[PaymentID],
        FTstg.[Created],
        FTstg.[ModifiedDate],
        FTstg.[IsActive],
        FTstg.[UserID],
        FTtmp.[Seller_Skey],
        FTstg.[PaymentTypeID],
        FTtmp.[PaymentType_Skey],
        FTstg.[CouponID],
        FTtmp.[Coupon_Skey],
        FTstg.[OrderTotal],
        FTstg.[DiscountAmount],
        FTstg.[ChargeAmount],
        FTstg.[IsApproved],
        FTstg.[IsSuccess],
        FTstg.[CardName],
        FTstg.[CardAddress],
        FTstg.[CardCity],
        FTstg.[CardState],
        FTstg.[CardCountry],
        FTstg.[CardExpirationYear],
        FTstg.[CardExpirationMonth],
        FTstg.[CardLastFourDigit],
        FTstg.[Token],
        FTstg.[PayerID],
        FTstg.[AuthorizationCode],
        FTstg.[ResponseCode],
        FTstg.[ResponseReasonCode],
        FTstg.[TransactionID],
        FTstg.[ErrorCode],
        FTstg.[ErrorTransactionID],
        FTstg.[PaymentStatus],
        FTstg.[FirstName],
        FTstg.[LastName],
        FTstg.[Address1],
        FTstg.[Address2],
        FTstg.[City],
        FTstg.[State],
        FTstg.[PostalCode],
        FTstg.[Email],
        FTstg.[CustomerIPAddress],
        FTstg.[LineItemDescription],
        FTstg.[GatewayMessage]
    from stg.CC_PaymentMerged_FT_tmp as FTtmp 
    join stg.CC_PaymentMerged_FT_stg as FTstg 
    on FTstg.PaymentID=FTtmp.PaymentID
),
insertData as (
    select 
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
    from stg.CC_PaymentMerged_FT_tmp
    where PaymentID not in (select  PaymentID from stg.CC_PaymentMerged_FT_stg)
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
from updateData

union all

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
from insertData
    ');

  CREATE TABLE "dbo"."CC_PaymentMerged_FT__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_PaymentMerged_FT__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_PaymentMerged_FT__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_PaymentMerged_FT__dbt_tmp_temp_view"
    end



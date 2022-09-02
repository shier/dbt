
  
  if object_id ('"stg"."CC_PaymentMerged_FT_stg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_PaymentMerged_FT_stg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_PaymentMerged_FT_stg__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_PaymentMerged_FT_stg__dbt_tmp"
    end


   EXEC('create view stg.CC_PaymentMerged_FT_stg__dbt_tmp_temp_view as
    
with oldPay as (
    SELECT
        [ID] AS [OldPaymentID],
        NULL as [NewPaymentID],
        HASHBYTES(''SHA2_256'', 
            CONCAT(
                COALESCE(CAST([ID] AS VARCHAR(20)), ''''), ''|'', 
                COALESCE(CAST([CreateDate] AS VARCHAR(20)), ''''), ''|'', 
                COALESCE(CAST([ModifyDate] AS VARCHAR(20)), '''')
            )
        ) AS[PaymentID],
        [CreateDate] AS [Created],
        [ModifyDate] AS [ModifiedDate],
        [IsActive],
        NULL as [UserID],
        [PaymentTypeID],
        [CouponID],
        NULL as [OrderTotal],
        [DiscountAmount],
        [ChargeAmount],
        NULL as [IsSuccess],
        NULL as [CardName],
        NULL as [CardAddress],
        NULL as [CardCity],
        NULL as [CardState],
        NULL as [CardCountry],
        NULL as [CardExpirationYear],
        NULL as [CardExpirationMonth],
        NULL as [CardLastFourDigit],
        NULL as [Token],
        NULL as [PayerID],
        [Approved] AS [IsApproved],
        NULLIF([AuthorizationCode], '''') AS [AuthorizationCode],
        [ResponseCode],
        [ResponseReasonCode],
        [TransactionID],
        [FirstName],
        [LastName],
        [Address1],
        [Address2],
        [City],
        [State],
        [ZipCode] AS [PostalCode],
        [Email],
        [CustomerIP] AS [CustomerIPAddress],
        [LineItemDescription],
        [GatewayMessage],
        NULL as [ErrorCode],
        NULL as [ErrorTransactionID],
        NULL as [PaymentStatus]
    FROM [stg].[CC_Payment_FinalView]
),
newPay as (
    SELECT
        NULL as [OldPaymentID],
        [ID] AS [NewPaymentID],
        HASHBYTES(''SHA2_256'', 
            COALESCE(CAST([ID] AS VARCHAR(20)), '''')
        ) AS [PaymentID],
        [CreateDate] AS [Created],
        [ModifyDate] AS [ModifiedDate],
        [IsActive],
        [UserID],
        [PaymentTypeID],
        [CouponID],
        [OrderTotal],
        [OrderDiscount] AS [DiscountAmount],
        [ChargeAmount],
        [Success] AS [IsSuccess],
        [CardName],
        [CardAddress],
        [CardCity],
        [CardState],
        [CardCountry],
        [Year] as [CardExpirationYear],
        [Month] as [CardExpirationMonth],
        [CardLastFour] as [CardLastFourDigit],
        [Token],
        [PayerID],
        [IsApproved],
        [AuthorizationCode],
        [ResponseCode],
        [ResponseReasonCode],
        [TransactionID],
        NULL as [FirstName],
        NULL as [LastName],
        NULL as [Address1],
        NULL as [Address2],
        NULL as [City],
        NULL as [State],
        NULL as [PostalCode],
        NULL as [Email],
        NULL as [CustomerIPAddress],
        NULL as [LineItemDescription],
        NULL as [GatewayMessage],
        [ErrorCode],
        [ErrorTransactionID],
        [PaymentStatus]
    FROM [stg].[CC_PaymentNew_FinalView]
)


select 
    [OldPaymentID],
    [NewPaymentID],
    [PaymentID],
    [Created],
    [ModifiedDate],
    [IsActive],
    [UserID],
    [PaymentTypeID],
    [CouponID],
    [OrderTotal],
    [DiscountAmount],
    [ChargeAmount],
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
    [IsApproved],
    [AuthorizationCode],
    [ResponseCode],
    [ResponseReasonCode],
    [TransactionID],
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
    [GatewayMessage],
    [ErrorCode],
    [ErrorTransactionID],
    [PaymentStatus]
from oldPay

UNION ALL

select 
    [OldPaymentID],
    [NewPaymentID],
    [PaymentID],
    [Created],
    [ModifiedDate],
    [IsActive],
    [UserID],
    [PaymentTypeID],
    [CouponID],
    [OrderTotal],
    [DiscountAmount],
    [ChargeAmount],
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
    [IsApproved],
    [AuthorizationCode],
    [ResponseCode],
    [ResponseReasonCode],
    [TransactionID],
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
    [GatewayMessage],
    [ErrorCode],
    [ErrorTransactionID],
    [PaymentStatus]
from newPay
    ');

  CREATE TABLE "stg"."CC_PaymentMerged_FT_stg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_PaymentMerged_FT_stg__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_PaymentMerged_FT_stg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_PaymentMerged_FT_stg__dbt_tmp_temp_view"
    end



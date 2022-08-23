
  
  if object_id ('"dbo"."CC_PaymentMerged_JoinFromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_PaymentMerged_JoinFromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_PaymentMerged_JoinFromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_PaymentMerged_JoinFromStg__dbt_tmp"
    end


   EXEC('create view dbo.CC_PaymentMerged_JoinFromStg__dbt_tmp_temp_view as
    
SELECT
	C_P.[ID] [PaymentID],
	null as [PaymentNewId],
	cast(C_P.[CreateDate] as datetime) [Created],
	cast(C_P.[ModifyDate] as datetime) [ModifiedDate],
	C_P.[IsActive],
	null as [UserID],
	C_P.[PaymentTypeID],
	C_P.[CouponID],
	null as [OrderTotalPrice],
	null as [OrderDiscountDollars],
	cast(C_P.[ChargeAmount] as money) [ChargeAmountDollars],
	null as [IsSuccess],
	null as [CardName],
	cast(C_P.[City] as nvarchar(40)) [CardCity],
	cast(C_P.[Address1] as nvarchar(200)) [CardAddress],
	cast(C_P.[Address2] as varchar(128)) [CardAddress2],
	cast(C_P.[State] as nvarchar(40)) [CardState],
	null as [CardCountry],
	null as [ExpirationMonth],
	null as [ExpirationYear],
	null as [CardLastFour],
	null as [Token],
	null as [PayerId],
	C_P.[Approved] [IsApproved],
	cast(C_P.[AuthorizationCode] as nvarchar(50)) [AuthorizationCode],
	cast(C_P.[ResponseCode] as nvarchar(50)) [ResponseCode],
	cast(C_P.[ResponseReasonCode] as nvarchar(50)) [ResponseReasonCode],
	cast(C_P.[TransactionID] as nvarchar(50)) [TransactionID],
	null as [ErrorCode],
	null as [ErrorTransactionID],
	null as [PaymentStatus],
	C_P.[ListingID],
	cast(C_P.[FirstName] as nvarchar(500)) [FirstName],
	cast(C_P.[LastName] as nvarchar(500)) [LastName],
	cast(C_P.[ZipCode] as nvarchar(50)) [PostalCode],
	cast(C_P.[Telephone] as varchar(128)) [Telephone],
	cast(C_P.[Email] as nvarchar(320)) [Email],
	cast(C_P.[CustomerIP] as nvarchar(255)) [CustomerIPAddress],
	cast(C_P.[LineItemDescription] as nvarchar(4000)) [LineItemDescription],
	cast(C_P.[DiscountAmount] as money) [OrderDiscountPrice],
	cast(C_P.[GatewayMessage] as nvarchar(4000)) [GatewayMessage]

FROM [stg].[CC_Payment_FinalView] AS C_P 

UNION ALL 

SELECT 
	null as [PaymentID],
	C_PN.[ID] [PaymentNewId],
	cast(C_PN.[CreateDate] as datetime) [Created],
	cast(C_PN.[ModifyDate] as datetime) [ModifiedDate],
	C_PN.[IsActive],
	C_PN.[UserID],
	C_PN.[PaymentTypeID],
	C_PN.[CouponID],
	cast(C_PN.[OrderTotal] as money) [OrderTotalPrice],
	cast(C_PN.[OrderDiscount] as money) [OrderDiscountDollars],
	cast(C_PN.[ChargeAmount] as money) [ChargeAmountDollars],
	C_PN.[Success] [IsSuccess],
	cast(C_PN.[CardName] as nvarchar(500)) [CardName],
	cast(C_PN.[CardCity] as nvarchar(40)) [CardCity],
	cast(C_PN.[CardAddress] as nvarchar(200)) [CardAddress],
	null as [CardAddress2],
	cast(C_PN.[CardState] as nvarchar(40)) [CardState],
	cast(C_PN.[CardCountry] as nvarchar(40)) [CardCountry],
	cast(C_PN.[Month] as nvarchar) [ExpirationMonth],
	cast(C_PN.[Year] as nvarchar) [ExpirationYear],
	cast(C_PN.[CardLastFour] as char) [CardLastFour],
	cast(C_PN.[Token] as nvarchar(30)) [Token],
	cast(C_PN.[PayerId] as nvarchar(30)) [PayerId],
	C_PN.[IsApproved],
	cast(C_PN.[AuthorizationCode] as nvarchar(50)) [AuthorizationCode],
	cast(C_PN.[ResponseCode] as nvarchar(50)) [ResponseCode],
	cast(C_PN.[ResponseReasonCode] as nvarchar(50)) [ResponseReasonCode],
	cast(C_PN.[TransactionID] as nvarchar(50)) [TransactionID],
	cast(C_PN.[ErrorCode] as nvarchar(10)) [ErrorCode],
	cast(C_PN.[ErrorTransactionID] as nvarchar(30)) [ErrorTransactionID],
	cast(C_PN.[PaymentStatus] as nvarchar(20)) [PaymentStatus],
	null as [ListingID],
	null as [FirstName],
	null as [LastName],
	null as [PostalCode],
	null as [Telephone],
	null as [Email],
	null as [CustomerIPAddress],
	null as [LineItemDescription],
	null as [OrderDiscountPrice],
	null as [GatewayMessage]
FROM [stg].[CC_PaymentNew_FinalView] AS C_PN
    ');

  CREATE TABLE "dbo"."CC_PaymentMerged_JoinFromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_PaymentMerged_JoinFromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_PaymentMerged_JoinFromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_PaymentMerged_JoinFromStg__dbt_tmp_temp_view"
    end



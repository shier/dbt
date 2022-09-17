
  
  if object_id ('"dbo"."CC_PaymentNew__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_PaymentNew__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_PaymentNew__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_PaymentNew__dbt_tmp"
    end


   EXEC('create view dbo.CC_PaymentNew__dbt_tmp_temp_view as
    
Select
	cast([GatewayMessage] as nvarchar(4000)) [GatewayMessage],
	cast([DiscountAmount] as money) [DiscountAmount],
	cast([LineItemDescription] as nvarchar(4000)) [LineItemDescription],
	cast([CustomerIP] as nvarchar(255)) [CustomerIp],
	cast([Email] as nvarchar(320)) [Email],
	cast([Telephone] as varchar(128)) [Telephone],
	cast([ZipCode] as nvarchar(50)) [ZipCode],
	cast([LastName] as nvarchar(500)) [LastName],
	cast([FirstName] as nvarchar(500)) [FirstName],
	cast([ListingID] as int) [ListingId],
	cast([PaymentStatus] as nvarchar(20)) [PaymentStatus],
	cast([ErrorTransactionID] as nvarchar(30)) [ErrorTransactionID],
	cast([ErrorCode] as nvarchar(10)) [ErrorCode],
	cast([TransactionID] as nvarchar(50)) [TransactionID],
	cast([ResponseReasonCode] as nvarchar(50)) [ResponseReasonCode],
	cast([ResponseCode] as nvarchar(50)) [ResponseCode],
	cast([AuthorizationCode] as nvarchar(50)) [AuthorizationCode],
	cast([IsApproved] as bit) [IsApproved],
	cast([PayerId] as nvarchar(30)) [PayerId],
	cast([Token] as nvarchar(30)) [Token],
	cast([CardLastFour] as char) [CardLastFour],
	cast([Year] as nvarchar) [Year],
	cast([Month] as nvarchar) [Month],
	cast([CardCountry] as nvarchar(40)) [CardCountry],
	cast([CardState] as nvarchar(40)) [CardState],
	cast([Address2] as varchar(128)) [Address2],
	cast([CardAddress] as nvarchar(200)) [CardAddress],
	cast([CardCity] as nvarchar(40)) [CardCity],
	cast([CardName] as nvarchar(500)) [CardName],
	cast([Success] as bit) [Success],
	cast([ChargeAmount] as money) [ChargeAmount],
	cast([OrderDiscount] as money) [OrderDiscount],
	cast([OrderTotal] as money) [OrderTotal],
	cast([CouponID] as int) [CouponId],
	cast([PaymentTypeID] as int) [PaymentTypeId],
	cast([UserID] as int) [UserId],
	cast([IsActive] as bit) [IsActive],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ID] as int) [Id],
	cast([ID] as int) [Id] 
From stg.[CC_PaymentNew_FinalView]
    ');

  CREATE TABLE "dbo"."CC_PaymentNew__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_PaymentNew__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_PaymentNew__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_PaymentNew__dbt_tmp_temp_view"
    end



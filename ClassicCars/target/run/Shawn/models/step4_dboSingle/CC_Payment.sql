
  
  if object_id ('"dbo"."CC_Payment__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_Payment__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_Payment__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_Payment__dbt_tmp"
    end


   EXEC('create view dbo.CC_Payment__dbt_tmp_temp_view as
    
Select
	cast([TransactionID] as nvarchar(50)) [TransactionID],
	cast([ResponseReasonCode] as nvarchar(50)) [ResponseReasonCode],
	cast([ResponseCode] as nvarchar(50)) [ResponseCode],
	cast([AuthorizationCode] as nvarchar(50)) [AuthorizationCode],
	cast([Approved] as bit) [IsApproved],
	cast([PayerId] as nvarchar(30)) [PayerId],
	cast([Token] as nvarchar(30)) [Token],
	cast([CardLastFour] as char) [CardLastFour],
	cast([Year] as nvarchar) [ExpirationYear],
	cast([Month] as nvarchar) [ExpirationMonth],
	cast([CardCountry] as nvarchar(40)) [CardCountry],
	cast([State] as nvarchar(40)) [CardState],
	cast([Address2] as varchar(128)) [CardAddress2],
	cast([Address1] as nvarchar(200)) [CardAddress],
	cast([City] as nvarchar(40)) [CardCity],
	cast([CardName] as nvarchar(500)) [CardName],
	cast([Success] as bit) [IsSuccess],
	cast([ChargeAmount] as money) [ChargeAmountDollars],
	cast([OrderDiscount] as money) [OrderDiscountDollars],
	cast([OrderTotal] as money) [OrderTotalPrice],
	cast([CouponID] as int) [CouponID],
	cast([PaymentTypeID] as int) [PaymentTypeID],
	cast([UserID] as int) [UserID],
	cast([IsActive] as bit) [IsActive],
	cast([ModifyDate] as datetime) [ModifiedDate],
	cast([CreateDate] as datetime) [Created],
	cast([ID] as int) [PaymentNewId],
	cast([ID] as int) [PaymentID],
	cast([ErrorCode] as nvarchar(10)) [ErrorCode],
	cast([ErrorTransactionID] as nvarchar(30)) [ErrorTransactionID],
	cast([PaymentStatus] as nvarchar(20)) [PaymentStatus],
	cast([ListingID] as int) [ListingID],
	cast([FirstName] as nvarchar(500)) [FirstName],
	cast([LastName] as nvarchar(500)) [LastName],
	cast([ZipCode] as nvarchar(50)) [PostalCode],
	cast([Telephone] as varchar(128)) [Telephone],
	cast([Email] as nvarchar(320)) [Email],
	cast([CustomerIP] as nvarchar(255)) [CustomerIPAddress],
	cast([LineItemDescription] as nvarchar(4000)) [LineItemDescription],
	cast([DiscountAmount] as money) [OrderDiscountPrice],
	cast([GatewayMessage] as nvarchar(4000)) [GatewayMessage] 
From stg.[CC_Payment_FinalView]
    ');

  CREATE TABLE "dbo"."CC_Payment__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_Payment__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_Payment__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_Payment__dbt_tmp_temp_view"
    end



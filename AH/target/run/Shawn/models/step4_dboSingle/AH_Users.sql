
  
  if object_id ('"dbo"."AH_Users__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Users__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_Users__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_Users__dbt_tmp"
    end


   EXEC('create view dbo.AH_Users__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [UserID],
	cast([BillingAddressID] as int) [BilingAddressID],
	cast([BillingCreditCardID] as int) [BillingCreditCardID],
	cast([PrimaryAddressID] as int) [PrimaryAddressID],
	cast([AccessfailedCount] as int) [AccessFailedCount],
	cast([IsApproved] as bit) [IsApproved],
	cast([IsLockedOut] as bit) [IsLockedOut],
	cast([NewsLetter] as bit) [IsNewsletter],
	cast([IsVerified] as bit) [IsVerified],
	cast([IsActive] as bit) [IsActive],
	cast([EmailConfirmed] as bit) [HasEmailConfirmed],
	cast([PhoneNumberConfirmed] as bit) [HasPhoneNumberConfirmed],
	cast([TwoFactorEnabled] as bit) [HasTwoFactorEnabled],
	cast([LockOutEnabled] as bit) [HasLockoutEnabled],
	cast([WebapiEnabled] as bit) [HasWebAPIEnabled],
	cast([CreationDate] as datetime) [CreatedDate],
	cast([LastLoginDate] as datetime) [LastLoginDateTime],
	cast([LastActivityDate] as datetime) [LastActivityDateTime],
	cast([CreatedOn] as datetime) [Created_RWXUsers],
	cast([UpdatedOn] as datetime) [UpdatedDate_RWXUsers],
	cast([DeletedOn] as datetime) [DeletedDate_RWXUsers],
	cast([LockOutEndDateUTC] as datetime) [LockoutEndDateTimeUTC],
	cast([UserName] as nvarchar(500)) [UserName],
	cast([Email] as nvarchar(320)) [Email],
	cast([Password] as varchar(128)) [Password],
	cast([Comment] as nvarchar(4000)) [Comment],
	cast([LastUpdatedUser] as nvarchar(500)) [LastUpdatedUser_RWXUsers],
	cast([Culture] as nvarchar(10)) [Culture],
	cast([Lastip] as nvarchar(50)) [LastIPAddress],
	cast([VerificationToken] as nvarchar(100)) [VerificationToken],
	cast([PasswordResetToken] as varchar(128)) [PasswordResetToken],
	cast([ServiceAuthorizationToken] as nvarchar(100)) [ServiceAuthorizationToken],
	cast([PasswordHash] as nvarchar(4000)) [PasswordHash],
	cast([SecURItyStamp] as nvarchar(4000)) [SecurityStamp],
	cast([PhoneNumber] as nvarchar(40)) [PhoneNumber] 
From stg.[AH_Users_FinalView]
    ');

  CREATE TABLE "dbo"."AH_Users__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_Users__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_Users__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Users__dbt_tmp_temp_view"
    end



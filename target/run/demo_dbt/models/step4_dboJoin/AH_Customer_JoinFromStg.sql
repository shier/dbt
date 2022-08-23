
  
  if object_id ('"dbo"."AH_Customer_JoinFromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Customer_JoinFromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_Customer_JoinFromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_Customer_JoinFromStg__dbt_tmp"
    end


   EXEC('create view dbo.AH_Customer_JoinFromStg__dbt_tmp_temp_view as
    
SELECT
	H_A.[ID] [AddressID],
	cast(H_A.[UpdatedOn] as datetime) [UpdatedDate_RWXAddresses],
	cast(H_A.[DeletedOn] as datetime) [DeletedDate_RWXAddresses],
	cast(H_A.[CreatedOn] as datetime) [Created_RWXAddresses],
	H_A.[UserID],
	H_A.[CountryID],
	cast(H_A.[Street1] as varchar(128)) [Street1],
	cast(H_A.[Street2] as varchar(128)) [Street2],
	cast(H_A.[City] as nvarchar(100)) [City],
	cast(H_A.[Stateregion] as nvarchar(50)) [State],
	cast(H_A.[ZipPostal] as nvarchar(50)) [PostalCode],
	cast(H_A.[LastUpdatedUser] as nvarchar(500)) [LastUpdatedUser_RWXAddresses],
	cast(H_A.[Description] as nvarchar(4000)) [Description],
	cast(H_A.[FirstName] as nvarchar(500)) [FirstName],
	cast(H_A.[LastName] as nvarchar(500)) [LastName],
	H_C.[ID] [CountryID],
	cast(H_C.[Name] as nvarchar(500)) [Country],
	cast(H_C.[Code] as char(5)) [Code],
	cast(H_C.[CreatedOn] as datetime) [Created_RWXCountries],
	cast(H_C.[UpdatedOn] as datetime) [UpdatedDate_RWXCountries],
	cast(H_C.[DeletedOn] as datetime) [DeletedDate_RWXCountries],
	H_C.[Enabled] [IsEnabled],
	H_C.[StateRequired] [IsStateRequired],
	H_R.[ID] [RoleID],
	cast(H_R.[CreatedOn] as datetime) [Created_RWXRoles],
	cast(H_R.[UpdatedOn] as datetime) [UpdatedDate_RWXRoles],
	cast(H_R.[DeletedOn] as datetime) [DeletedDate_RWXRoles],
	cast(H_R.[LastUpdatedUser] as nvarchar(500)) [LastUpdatedUser_RWXRoles],
	cast(H_R.[Name] as nvarchar(500)) [Role],
	H_UP.[ID] [ID_RWXUserProperties],
	H_UP.[UserID],
	H_UP.[CustomFieldID],
	H_UP.[BoolnativeValue] [HasBoolNativeValue],
	cast(H_UP.[CreatedOn] as datetime) [Created_RWXUserProperties],
	cast(H_UP.[UpdatedOn] as datetime) [UpdatedDate_RWXUserProperties],
	cast(H_UP.[DeletedOn] as datetime) [DeletedDate_RWXUserProperties],
	cast(H_UP.[StringnativeValue] as nvarchar(4000)) [StringNativeValue],
	cast(H_UP.[LastUpdatedUser] as nvarchar(500)) [LastUpdatedUser_RWXUserProperties],
	H_UR.[ID] [ID_RWXUserRoles],
	H_UR.[RoleID],
	H_UR.[UserID],
	H_U.[ID] [UserID],
	H_U.[BillingAddressID] [BilingAddressID],
	H_U.[BillingCreditCardID],
	H_U.[PrimaryAddressID],
	H_U.[AccessfailedCount] [AccessFailedCount],
	H_U.[IsApproved],
	H_U.[IsLockedOut],
	H_U.[NewsLetter] [IsNewsletter],
	H_U.[IsVerified],
	H_U.[IsActive],
	H_U.[EmailConfirmed] [HasEmailConfirmed],
	H_U.[PhoneNumberConfirmed] [HasPhoneNumberConfirmed],
	H_U.[TwoFactorEnabled] [HasTwoFactorEnabled],
	H_U.[LockOutEnabled] [HasLockoutEnabled],
	H_U.[WebapiEnabled] [HasWebAPIEnabled],
	cast(H_U.[CreationDate] as datetime) [CreatedDate],
	cast(H_U.[LastLoginDate] as datetime) [LastLoginDateTime],
	cast(H_U.[LastActivityDate] as datetime) [LastActivityDateTime],
	cast(H_U.[CreatedOn] as datetime) [Created_RWXUsers],
	cast(H_U.[UpdatedOn] as datetime) [UpdatedDate_RWXUsers],
	cast(H_U.[DeletedOn] as datetime) [DeletedDate_RWXUsers],
	cast(H_U.[LockOutEndDateUTC] as datetime) [LockoutEndDateTimeUTC],
	cast(H_U.[UserName] as nvarchar(500)) [UserName],
	cast(H_U.[Email] as nvarchar(320)) [Email],
	cast(H_U.[Password] as varchar(128)) [Password],
	cast(H_U.[Comment] as nvarchar(4000)) [Comment],
	cast(H_U.[LastUpdatedUser] as nvarchar(500)) [LastUpdatedUser_RWXUsers],
	cast(H_U.[Culture] as nvarchar(10)) [Culture],
	cast(H_U.[Lastip] as nvarchar(50)) [LastIPAddress],
	cast(H_U.[VerificationToken] as nvarchar(100)) [VerificationToken],
	cast(H_U.[PasswordResetToken] as varchar(128)) [PasswordResetToken],
	cast(H_U.[ServiceAuthorizationToken] as nvarchar(100)) [ServiceAuthorizationToken],
	cast(H_U.[PasswordHash] as nvarchar(4000)) [PasswordHash],
	cast(H_U.[SecURItyStamp] as nvarchar(4000)) [SecurityStamp],
	cast(H_U.[PhoneNumber] as nvarchar(40)) [PhoneNumber]
FROM [stg].[AH_Users_FinalView] AS H_U
JOIN [stg].[AH_Addresses_FinalView] AS H_A ON H_A.[ID]=H_U.[BillingAddressID]
JOIN [stg].[AH_Countries_FinalView] AS H_C ON H_C.[ID]=H_A.[CountryID]
JOIN [stg].[AH_UserRoles_FinalView] AS H_UR ON H_UR.[UserID]=H_U.[ID]
JOIN [stg].[AH_Roles_FinalView] AS H_R ON H_R.[ID]=H_UR.[RoleID]
JOIN [stg].[AH_Userproperties_FinalView] AS H_UP ON H_UP.[UserID]=H_U.[ID]


-- RWX_Addresses.Id = RWX_CreditCards.AddressId
-- RWX_Countries.Id = RWX_States.CountryId RWX_Countries.Id = RWX_Addresses.CountryId
-- RWX_Roles.Id = RWX_UserRoles.RoleId
    ');

  CREATE TABLE "dbo"."AH_Customer_JoinFromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_Customer_JoinFromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_Customer_JoinFromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Customer_JoinFromStg__dbt_tmp_temp_view"
    end


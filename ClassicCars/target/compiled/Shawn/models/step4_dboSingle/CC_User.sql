
Select
	cast([ID] as int) [UserID],
	cast([CompanyID] as int) [CompanyID],
	cast([UserCreationSourceID] as int) [UserCreationSourceID],
	cast([CreateDate] as datetime) [Created_User],
	cast([ModifyDate] as datetime) [ModifiedDate_User],
	cast([PasswordResetDate] as datetime) [PasswordResetDate],
	cast([TwoFactorResetDate] as datetime) [TwoFactorResetDate],
	cast([SessionToken] as nvarchar(100)) [SessionToken],
	cast([Email] as nvarchar(320)) [Email_User],
	cast([FirstName] as nvarchar(500)) [FirstName],
	cast([LastName] as nvarchar(500)) [LastName],
	cast([DataTokenID] as uniqueidentifier) [DataTokenID],
	cast([PasswordResetToken] as uniqueidentifier) [PasswordResetToken],
	cast([TwoFactorToken] as nvarchar(10)) [TwoFactorToken],
	cast([IsActive] as bit) [IsActive_User],
	cast([EmailConfirmed] as bit) [HasEmailConfirmed],
	cast([UseTwoFactor] as bit) [IsUseTwoFactor] 
From stg.[CC_User_FinalView]
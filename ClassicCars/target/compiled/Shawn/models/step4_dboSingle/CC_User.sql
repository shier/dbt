
Select
	cast([ID] as int) [Id],
	cast([CompanyID] as int) [CompanyId],
	cast([UserCreationSourceID] as int) [UserCreationSourceID],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([PasswordResetDate] as datetime) [PasswordResetDate],
	cast([TwoFactorResetDate] as datetime) [TwoFactorResetDate],
	cast([SessionToken] as nvarchar(100)) [SessionToken],
	cast([Email] as nvarchar(320)) [Email],
	cast([FirstName] as nvarchar(500)) [FirstName],
	cast([LastName] as nvarchar(500)) [LastName],
	cast([DataTokenID] as uniqueidentifier) [DataTokenId],
	cast([PasswordResetToken] as uniqueidentifier) [PasswordResetToken],
	cast([TwoFactorToken] as nvarchar(10)) [TwoFactorToken],
	cast([IsActive] as bit) [IsActive],
	cast([EmailConfirmed] as bit) [EmailConfirmed],
	cast([UseTwoFactor] as bit) [UseTwoFactor] 
From stg.[CC_User_FinalView]
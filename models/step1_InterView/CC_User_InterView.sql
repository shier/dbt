{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[CompanyId] [CompanyID],
	[UserCreationSourceID] [UserCreationSourceID],
	[CreateDate] [CreateDate],
	[ModifyDate] [ModifyDate],
	[PasswordResetDate] [PasswordResetDate],
	[TwoFactorResetDate] [TwoFactorResetDate],
	cast([SessionToken] as nvarchar(4000)) [SessionToken],
	cast([Email] as nvarchar(4000)) [Email],
	cast([FirstName] as nvarchar(4000)) [FirstName],
	cast([LastName] as nvarchar(4000)) [LastName],
	cast([DataTokenId] as nvarchar(4000)) [DataTokenID],
	cast([PasswordResetToken] as nvarchar(4000)) [PasswordResetToken],
	cast([TwoFactorToken] as nvarchar(4000)) [TwoFactorToken],
	[IsActive] [IsActive],
	[EmailConfirmed] [EmailConfirmed],
	[UseTwoFactor] [UseTwoFactor]
From stg.[CC_User_Raw]

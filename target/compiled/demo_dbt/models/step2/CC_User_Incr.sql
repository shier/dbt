
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(CompanyID as varchar), Cast(UserCreationSourceID as varchar), Cast(CreateDate as varchar), Cast(ModifyDate as varchar), Cast(PasswordResetDate as varchar), Cast(TwoFactorResetDate as varchar), Cast(IsActive as varchar), Cast(EmailConfirmed as varchar), Cast(UseTwoFactor as varchar), DataTokenID, PasswordResetToken, TwoFactorToken, SessionToken, Email, FirstName, LastName)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_User_Inter]
	)
Select * From hashData

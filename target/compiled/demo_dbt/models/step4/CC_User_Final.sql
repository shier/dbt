
Select
	[ID],[CompanyID],[UserCreationSourceID],[CreateDate],[ModifyDate],[PasswordResetDate],[TwoFactorResetDate],[IsActive],[EmailConfirmed],[UseTwoFactor],[DataTokenID],[PasswordResetToken],[TwoFactorToken],[SessionToken],[Email],[FirstName],[LastName] 
From stg.[CC_User_Incr] 
Where [dbt_valid_to] is null
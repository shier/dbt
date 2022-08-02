create view "stg"."CC_User_FinalView__dbt_tmp" as
    
Select
	[ID],[CompanyID],[UserCreationSourceID],[CreateDate],[ModifyDate],[PasswordResetDate],[TwoFactorResetDate],[SessionToken],[Email],[FirstName],[LastName],[DataTokenID],[PasswordResetToken],[TwoFactorToken],[IsActive],[EmailConfirmed],[UseTwoFactor] 
From stg.[CC_User_Incr] 
Where [dbt_valid_to] is null

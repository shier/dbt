create view "stg"."AH_Users_FinalView__dbt_tmp" as
    
Select
	[ID],[BillingAddressID],[BillingCreditCardID],[PrimaryAddressID],[AccessfailedCount],[IsApproved],[IsLockedOut],[NewsLetter],[IsVerified],[IsActive],[EmailConfirmed],[PhoneNumberConfirmed],[TwoFactorEnabled],[LockOutEnabled],[WebapiEnabled],[CreationDate],[LastLoginDate],[LastActivityDate],[CreatedOn],[UpdatedOn],[DeletedOn],[LockOutEndDateUTC],[UserName],[Email],[Password],[Comment],[LastUpdatedUser],[Culture],[Lastip],[VerificationToken],[PasswordResetToken],[ServiceAuthorizationToken],[PasswordHash],[SecURItyStamp],[PhoneNumber] 
From stg.[AH_Users_Incr] 
Where [dbt_valid_to] is null

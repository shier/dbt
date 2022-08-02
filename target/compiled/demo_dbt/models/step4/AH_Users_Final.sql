
Select
	[ID],[IsApproved],[IsLockedOut],[NewsLetter],[IsVerified],[IsActive],[EmailConfirmed],[PhoneNumberConfirmed],[TwoFactorEnabled],[LockOutEnabled],[WebapiEnabled],[AccessfailedCount],[BillingAddressID],[BillingCreditCardID],[PrimaryAddressID],[DeletedOn],[LockOutEndDateUTC],[CreationDate],[LastLoginDate],[LastActivityDate],[CreatedOn],[UpdatedOn],[Comment],[LastUpdatedUser],[Culture],[Lastip],[VerificationToken],[PasswordResetToken],[UserName],[Email],[Password],[ServiceAuthorizationToken],[PasswordHash],[SecURItyStamp],[PhoneNumber] 
From stg.[AH_Users_Incr] 
Where [dbt_valid_to] is null
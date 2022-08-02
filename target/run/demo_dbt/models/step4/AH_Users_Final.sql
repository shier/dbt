
  
  if object_id ('"stg"."AH_Users_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Users_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_Users_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_Users_Final__dbt_tmp"
    end


   EXEC('create view stg.AH_Users_Final__dbt_tmp_temp_view as
    
Select
	[ID],[IsApproved],[IsLockedOut],[NewsLetter],[IsVerified],[IsActive],[EmailConfirmed],[PhoneNumberConfirmed],[TwoFactorEnabled],[LockOutEnabled],[WebapiEnabled],[AccessfailedCount],[BillingAddressID],[BillingCreditCardID],[PrimaryAddressID],[DeletedOn],[LockOutEndDateUTC],[CreationDate],[LastLoginDate],[LastActivityDate],[CreatedOn],[UpdatedOn],[Comment],[LastUpdatedUser],[Culture],[Lastip],[VerificationToken],[PasswordResetToken],[UserName],[Email],[Password],[ServiceAuthorizationToken],[PasswordHash],[SecURItyStamp],[PhoneNumber] 
From stg.[AH_Users_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."AH_Users_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_Users_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_Users_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Users_Final__dbt_tmp_temp_view"
    end



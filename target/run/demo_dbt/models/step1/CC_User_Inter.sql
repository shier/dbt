
  
  if object_id ('"stg"."CC_User_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_User_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_User_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_User_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_User_Inter__dbt_tmp_temp_view as
    
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
    ');

  CREATE TABLE "stg"."CC_User_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_User_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_User_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_User_Inter__dbt_tmp_temp_view"
    end



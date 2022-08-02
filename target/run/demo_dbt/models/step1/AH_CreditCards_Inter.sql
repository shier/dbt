
  
  if object_id ('"stg"."AH_CreditCards_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_CreditCards_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_CreditCards_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_CreditCards_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_CreditCards_Inter__dbt_tmp_temp_view as
    
Select
	[Id] [ID],
	[ExpirationMonth] [ExpirationMonth],
	[ExpirationYear] [ExpirationYear],
	[CreditCardTypeId] [CreditCardTypeID],
	[UserId] [UserID],
	[AddressId] [AddressID],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	cast([CardNumber] as nvarchar(4000)) [CardNumber],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([LastFourDigits] as nvarchar(4000)) [LastFourdigits],
	cast([Description] as nvarchar(4000)) [Description]
From stg.[AH_CreditCards_Raw]
    ');

  CREATE TABLE "stg"."AH_CreditCards_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_CreditCards_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_CreditCards_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_CreditCards_Inter__dbt_tmp_temp_view"
    end



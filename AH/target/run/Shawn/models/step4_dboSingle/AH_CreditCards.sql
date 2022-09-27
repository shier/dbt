
  
  if object_id ('"dbo"."AH_CreditCards__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_CreditCards__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_CreditCards__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_CreditCards__dbt_tmp"
    end


   EXEC('create view dbo.AH_CreditCards__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [Id],
	cast([ExpirationMonth] as nvarchar(4000)) [ExpirationMonth],
	cast([ExpirationYear] as nvarchar(4000)) [ExpirationYear],
	cast([CreditCardTypeID] as int) [CreditCardTypeId],
	cast([UserID] as int) [UserId],
	cast([AddressID] as int) [AddressId],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([CardNumber] as nvarchar(4000)) [CardNumber],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([LastFourdigits] as nvarchar(4000)) [LastFourDigits],
	cast([Description] as nvarchar(4000)) [Description] 
From stg.[AH_CreditCards_FinalView]
    ');

  CREATE TABLE "dbo"."AH_CreditCards__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_CreditCards__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_CreditCards__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_CreditCards__dbt_tmp_temp_view"
    end



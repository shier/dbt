
  
  if object_id ('"dbo"."AH_CreditCards_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_CreditCards_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_CreditCards_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_CreditCards_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.AH_CreditCards_FromStg__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [ID],
	cast([ExpirationMonth] as int) [ExpirationMonth],
	cast([ExpirationYear] as int) [ExpirationYear],
	cast([CreditCardTypeID] as int) [CreditCardTypeID],
	cast([UserID] as int) [UserID],
	cast([AddressID] as int) [AddressID],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([CardNumber] as nvarchar(4000)) [CardNumber],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([LastFourdigits] as nvarchar(4000)) [LastFourdigits],
	cast([Description] as nvarchar(4000)) [Description] 
From stg.[AH_CreditCards_FinalView]
    ');

  CREATE TABLE "dbo"."AH_CreditCards_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_CreditCards_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_CreditCards_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_CreditCards_FromStg__dbt_tmp_temp_view"
    end



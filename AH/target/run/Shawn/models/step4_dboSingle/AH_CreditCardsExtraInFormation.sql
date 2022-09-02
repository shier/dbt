
  
  if object_id ('"dbo"."AH_CreditCardsExtraInFormation__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_CreditCardsExtraInFormation__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_CreditCardsExtraInFormation__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_CreditCardsExtraInFormation__dbt_tmp"
    end


   EXEC('create view dbo.AH_CreditCardsExtraInFormation__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [ID],
	cast([Cvv] as nvarchar(4000)) [Cvv],
	cast([CreditCardID] as int) [CreditCardID] 
From stg.[AH_CreditCardsExtraInFormation_FinalView]
    ');

  CREATE TABLE "dbo"."AH_CreditCardsExtraInFormation__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_CreditCardsExtraInFormation__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_CreditCardsExtraInFormation__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_CreditCardsExtraInFormation__dbt_tmp_temp_view"
    end



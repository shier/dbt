
  
  if object_id ('"stg"."AH_SalesTaxRates_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_SalesTaxRates_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_SalesTaxRates_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_SalesTaxRates_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_SalesTaxRates_Inter__dbt_tmp_temp_view as
    
Select
	TaxRate TaxRate,
	cast(LastUpdatedUser as nvarchar(4000)) LastUpdatedUser,
	cast(Shipping as nvarchar(4000)) Shipping,
	UpdatedOn Updatedon,
	DeletedOn Deletedon,
	CreatedOn Createdon,
	Id ID,
	UserId UserID,
	StateId StateID
From AH_SalesTaxRates_Raw
    ');

  CREATE TABLE "stg"."AH_SalesTaxRates_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_SalesTaxRates_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_SalesTaxRates_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_SalesTaxRates_Inter__dbt_tmp_temp_view"
    end



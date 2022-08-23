
  
  if object_id ('"dbo"."AH_StripeCustomers_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_StripeCustomers_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_StripeCustomers_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_StripeCustomers_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.AH_StripeCustomers_FromStg__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [ID],
	cast([SellerID] as int) [SellerID],
	cast([BuyerID] as int) [BuyerID],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([CustomerID] as nvarchar(4000)) [CustomerID] 
From stg.[AH_StripeCustomers_FinalView]
    ');

  CREATE TABLE "dbo"."AH_StripeCustomers_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_StripeCustomers_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_StripeCustomers_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_StripeCustomers_FromStg__dbt_tmp_temp_view"
    end



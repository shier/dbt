
  
  if object_id ('"stg"."AH_Invoices_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Invoices_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_Invoices_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_Invoices_Final__dbt_tmp"
    end


   EXEC('create view stg.AH_Invoices_Final__dbt_tmp_temp_view as
    
Select
	[ID],[Paiddttm],[CreatedOn],[UpdatedOn],[DeletedOn],[Createddttm],[Fulfilleddttm],[PropertybagID],[ShippingOptionID],[PayerID],[OwnerID],[AuctionEventID],[SalesTax],[BuyersPremiumPercent],[BuyersPremiumAmount],[ShippingAmount],[SubTotal],[Total],[IsPayerLocked],[Shipped],[IsArchived],[Status],[ShippingLastName],[BillingLastName],[OwnerName],[Shippingdetails],[OwnerCity],[OwnerStateregion],[OwnerzipPostal],[OwnerCountry],[ShippingFirstName],[BillingFirstName],[BillingCity],[BillingStateregion],[BillingzipPostal],[BillingCountry],[OwnerStreet1],[OwnerStreet2],[ShippingCity],[ShippingStateregion],[ShippingzipPostal],[ShippingCountry],[BillingStreet1],[BillingStreet2],[Comments],[LastUpdatedUser],[Currency],[Type],[ShippingStreet1],[ShippingStreet2] 
From stg.[AH_Invoices_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."AH_Invoices_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_Invoices_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_Invoices_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Invoices_Final__dbt_tmp_temp_view"
    end



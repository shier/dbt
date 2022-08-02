
  
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
	[ID],[CreatedOn],[UpdatedOn],[DeletedOn],[Createddttm],[Fulfilleddttm],[Paiddttm],[ShippingOptionID],[PayerID],[OwnerID],[AuctionEventID],[PropertybagID],[IsPayerLocked],[Shipped],[IsArchived],[BuyersPremiumPercent],[BuyersPremiumAmount],[ShippingAmount],[SubTotal],[Total],[SalesTax],[Shippingdetails],[Status],[Comments],[LastUpdatedUser],[Currency],[OwnerCountry],[ShippingFirstName],[BillingFirstName],[ShippingLastName],[BillingLastName],[OwnerName],[BillingCountry],[OwnerStreet1],[OwnerStreet2],[OwnerCity],[OwnerStateregion],[OwnerzipPostal],[ShippingCountry],[BillingStreet1],[BillingStreet2],[BillingCity],[BillingStateregion],[BillingzipPostal],[Type],[ShippingStreet1],[ShippingStreet2],[ShippingCity],[ShippingStateregion],[ShippingzipPostal] 
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



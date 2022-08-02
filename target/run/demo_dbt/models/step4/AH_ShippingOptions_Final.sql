
  
  if object_id ('"stg"."AH_ShippingOptions_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_ShippingOptions_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_ShippingOptions_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_ShippingOptions_Final__dbt_tmp"
    end


   EXEC('create view stg.AH_ShippingOptions_Final__dbt_tmp_temp_view as
    
Select
	[ID],[ShippingMethodID],[ListingID],[CreatedOn],[UpdatedOn],[DeletedOn],[FirstItEMAmount],[AdditionalItEMAmount] 
From stg.[AH_ShippingOptions_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."AH_ShippingOptions_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_ShippingOptions_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_ShippingOptions_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_ShippingOptions_Final__dbt_tmp_temp_view"
    end



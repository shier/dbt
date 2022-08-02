
  
  if object_id ('"stg"."Auct_NavisionVendorBuffer_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_NavisionVendorBuffer_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_NavisionVendorBuffer_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_NavisionVendorBuffer_Final__dbt_tmp"
    end


   EXEC('create view stg.Auct_NavisionVendorBuffer_Final__dbt_tmp_temp_view as
    
Select
	[No],[Name],[Name2],[Address],[Address2],[City],[State],[CountryCode],[PostalCode],[Phoneno],[Email],[HomePage],[Taxliable],[FederalIDno],[1099Code],[Status],[StatusMessage],[WrotetoNavision] 
From [Auct_NavisionVendorBuffer_Incr]
    ');

  CREATE TABLE "stg"."Auct_NavisionVendorBuffer_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_NavisionVendorBuffer_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_NavisionVendorBuffer_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_NavisionVendorBuffer_Final__dbt_tmp_temp_view"
    end




      
  
  if object_id ('"stg"."Auct_Vendor_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Vendor_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Vendor_Incr"','U') is not null
    begin
    drop table "stg"."Auct_Vendor_Incr"
    end


   EXEC('create view stg.Auct_Vendor_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(LegacyVendorID as varchar), Cast(CustomerAccountID as varchar), Cast(VendorStatusID as varchar), Cast(VendorTypeID as varchar), Cast(ProductServiceTypeID as varchar), Cast(UpdateEventID as varchar), Cast(AddressID as varchar), Cast(Created as varchar), JobTitle)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Vendor_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_Vendor_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Vendor_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_Vendor_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Vendor_Incr_temp_view"
    end



  
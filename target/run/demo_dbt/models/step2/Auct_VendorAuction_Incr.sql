
      
  
  if object_id ('"stg"."Auct_VendorAuction_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_VendorAuction_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_VendorAuction_Incr"','U') is not null
    begin
    drop table "stg"."Auct_VendorAuction_Incr"
    end


   EXEC('create view stg.Auct_VendorAuction_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Comments, Cast(Spacecost as varchar), Cast(SpecialVendorValue as varchar), Cast(ContractDate as varchar), Cast(ApplicationDate as varchar), Cast(Created as varchar), Cast(Legacy_VendorID as varchar), Cast(SpecialVendorTypeID as varchar), Cast(AuctionID as varchar), Cast(VendorID as varchar), Cast(UpdateEventID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_VendorAuction_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_VendorAuction_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_VendorAuction_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_VendorAuction_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_VendorAuction_Incr_temp_view"
    end



  
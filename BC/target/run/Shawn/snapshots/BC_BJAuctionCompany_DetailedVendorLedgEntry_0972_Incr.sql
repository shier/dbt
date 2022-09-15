
      
  
  if object_id ('"stg"."BC_BJAuctionCompany_DetailedVendorLedgEntry_0972_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."BC_BJAuctionCompany_DetailedVendorLedgEntry_0972_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."BC_BJAuctionCompany_DetailedVendorLedgEntry_0972_Incr"','U') is not null
    begin
    drop table "stg"."BC_BJAuctionCompany_DetailedVendorLedgEntry_0972_Incr"
    end


   EXEC('create view stg.BC_BJAuctionCompany_DetailedVendorLedgEntry_0972_Incr_temp_view as
    

    select *,
        
    CONVERT(VARCHAR(32), HashBytes(''MD5'', 
        coalesce(cast(EntryNo as varchar(max)), '''')  + ''|'' + 
    
        coalesce(cast(CONVERT(DATETIME2, ''2022-09-15 00:31:47.085217'') as varchar(max)), '''') 
    ), 2)
 as dbt_scd_id,
        CONVERT(DATETIME2, ''2022-09-15 00:31:47.085217'') as dbt_updated_at,
        CONVERT(DATETIME2, ''2022-09-15 00:31:47.085217'') as dbt_valid_from,
        nullif(CONVERT(DATETIME2, ''2022-09-15 00:31:47.085217''), CONVERT(DATETIME2, ''2022-09-15 00:31:47.085217'')) as dbt_valid_to
    from (
        
	
	SELECT * from stg.[BC_BJAuctionCompany_DetailedVendorLedgEntry_0972_InterView]
    ) sbq



    ');

  CREATE TABLE "stg"."BC_BJAuctionCompany_DetailedVendorLedgEntry_0972_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.BC_BJAuctionCompany_DetailedVendorLedgEntry_0972_Incr_temp_view)

   
  
  if object_id ('"stg"."BC_BJAuctionCompany_DetailedVendorLedgEntry_0972_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."BC_BJAuctionCompany_DetailedVendorLedgEntry_0972_Incr_temp_view"
    end



  
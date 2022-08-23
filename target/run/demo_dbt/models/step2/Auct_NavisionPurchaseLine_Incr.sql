
      
  
  if object_id ('"stg"."Auct_NavisionPurchaseLine_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_NavisionPurchaseLine_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_NavisionPurchaseLine_Incr"','U') is not null
    begin
    drop table "stg"."Auct_NavisionPurchaseLine_Incr"
    end


   EXEC('create view stg.Auct_NavisionPurchaseLine_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''SHA2_256'', concat(Cast([DocumentType] as varchar), [AuctionDocumentno], Cast([Lneno] as varchar), Cast([Type] as varchar), [No], [Description], [Description2], Cast([Quantity] as varchar), Cast([DirectUnitcostexclTax] as varchar), Cast([Status] as varchar), [StatusMessage], [Globaldim1Code], [Globaldim2Code], [ShortCutdim4Code], [ShortCutdim5Code], [ShortCutdim8Code], [ShortCutdim3Code], [BusinessUnit], Cast([WrotetoNavision] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_NavisionPurchaseLine_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_NavisionPurchaseLine_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_NavisionPurchaseLine_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_NavisionPurchaseLine_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_NavisionPurchaseLine_Incr_temp_view"
    end



  
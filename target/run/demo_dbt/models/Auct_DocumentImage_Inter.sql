
  
  if object_id ('"stg"."Auct_DocumentImage_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_DocumentImage_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_DocumentImage_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_DocumentImage_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_DocumentImage_Inter__dbt_tmp_temp_view as
    
Select
	cast(UNCPATH as nvarchar(4000)) UncPath,
	cast(FULLPATH as nvarchar(4000)) FullPath,
	EXPIRATION Expiration,
	CREATED Created,
	ACTIVE Active,
	CUSTOMERACCOUNTID CustomerAccountID,
	DOCUMENTIMAGETYPEID DocumentImageTypeID,
	AUCTIONID AuctionID,
	CREATEDBYUSERID CreatedByUserID,
	HEIGHT Height,
	WIDTH Width,
	DOCUMENTIMAGEID DocumentImageID
From Auct_DocumentImage_Raw
    ');

  CREATE TABLE "stg"."Auct_DocumentImage_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_DocumentImage_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_DocumentImage_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_DocumentImage_Inter__dbt_tmp_temp_view"
    end



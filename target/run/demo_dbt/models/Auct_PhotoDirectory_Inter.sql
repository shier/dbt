
  
  if object_id ('"stg"."Auct_PhotoDirectory_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_PhotoDirectory_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_PhotoDirectory_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_PhotoDirectory_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_PhotoDirectory_Inter__dbt_tmp_temp_view as
    
Select
	cast(UNCPATH as nvarchar(4000)) UncPath,
	cast(TYPENAME as nvarchar(4000)) TypeName,
	PHOTODIRECTORYID PhotoDirectoryID,
	ACTIVE Active,
	DIRECTORYTYPEID DirectoryTypeID,
	AUCTIONID AuctionID,
	ISCDN IsCDN
From Auct_PhotoDirectory_Raw
    ');

  CREATE TABLE "stg"."Auct_PhotoDirectory_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_PhotoDirectory_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_PhotoDirectory_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_PhotoDirectory_Inter__dbt_tmp_temp_view"
    end



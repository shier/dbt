
  
  if object_id ('"stg"."Auct_Photo_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Photo_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Photo_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Photo_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Photo_Inter__dbt_tmp_temp_view as
    
Select
	CREATED Created,
	SHOWONWEB ShowonWeb,
	ISMAINADVERTISING IsMainAdvertising,
	WIDTH Width,
	UPDATEEVENTID UpdateEventID,
	TBPHOTOSIZE TbPhotoSize,
	TBHEIGHT TbHeight,
	TBWIDTH TbWidth,
	WEBSITEORDER WebSiteOrder,
	PHOTOID PhotoID,
	PHOTOTYPEID PhotoTypeID,
	PHOTOSTATUSID PhotoStatusID,
	ITEMID ItemID,
	PHOTOSIZE PhotoSize,
	HEIGHT Height,
	cast(FILENAME as nvarchar(4000)) FileName,
	cast(UNCPATH as nvarchar(4000)) UncPath,
	cast(TBFILENAME as nvarchar(4000)) TbFileName,
	cast(TBUNCPATH as nvarchar(4000)) TbUncPath,
	cast(FULLPATH as nvarchar(4000)) FullPath,
	cast(TBFULLPATH as nvarchar(4000)) TbfullPath,
	cast(WEBFILENAME as nvarchar(4000)) WebFileName,
	cast(WEBUNCPATH as nvarchar(4000)) WebUncPath,
	cast(REJECTIONREASON as nvarchar(4000)) RejectionReason
From Auct_Photo_Raw
    ');

  CREATE TABLE "stg"."Auct_Photo_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Photo_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Photo_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Photo_Inter__dbt_tmp_temp_view"
    end



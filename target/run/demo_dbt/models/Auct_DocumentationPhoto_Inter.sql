
  
  if object_id ('"stg"."Auct_DocumentationPhoto_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_DocumentationPhoto_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_DocumentationPhoto_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_DocumentationPhoto_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_DocumentationPhoto_Inter__dbt_tmp_temp_view as
    
Select
	CREATED Created,
	ITEMID ItemID,
	PHOTOSIZE PhotoSize,
	HEIGHT Height,
	WIDTH Width,
	UPDATEEVENTID UpdateEventID,
	TBPHOTOSIZE TbPhotoSize,
	DOCUMENTATIONPHOTOID DocumentationPhotoID,
	PHOTOTYPEID PhotoTypeID,
	PHOTOSTATUSID PhotoStatusID,
	TBHEIGHT TbHeight,
	TBWIDTH TbWidth,
	WEBSITEORDER WebSiteOrder,
	SHOWONWEB ShowonWeb,
	ISMAINADVERTISING IsMainAdvertising,
	cast(REJECTIONREASON as nvarchar(4000)) RejectionReason,
	cast(FILENAME as nvarchar(4000)) FileName,
	cast(UNCPATH as nvarchar(4000)) UncPath,
	cast(TBFILENAME as nvarchar(4000)) TbFileName,
	cast(TBUNCPATH as nvarchar(4000)) TbUncPath,
	cast(FULLPATH as nvarchar(4000)) FullPath,
	cast(TBFULLPATH as nvarchar(4000)) TbfullPath,
	cast(WEBFILENAME as nvarchar(4000)) WebFileName,
	cast(WEBUNCPATH as nvarchar(4000)) WebUncPath
From Auct_DocumentationPhoto_Raw
    ');

  CREATE TABLE "stg"."Auct_DocumentationPhoto_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_DocumentationPhoto_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_DocumentationPhoto_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_DocumentationPhoto_Inter__dbt_tmp_temp_view"
    end



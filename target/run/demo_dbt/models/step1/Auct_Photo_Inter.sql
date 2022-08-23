
  
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
	[PHOTOID] [PhotoID],
	[PHOTOTYPEID] [PhotoTypeID],
	[PHOTOSTATUSID] [PhotoStatusID],
	[ITEMID] [ItemID],
	cast([FILENAME] as nvarchar(4000)) [FileName],
	cast([UNCPATH] as nvarchar(4000)) [UncPath],
	[PHOTOSIZE] [PhotoSize],
	[HEIGHT] [Height],
	[WIDTH] [Width],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	cast([TBFILENAME] as nvarchar(4000)) [TbFileName],
	[TBPHOTOSIZE] [TbPhotoSize],
	cast([TBUNCPATH] as nvarchar(4000)) [TbUncPath],
	[TBHEIGHT] [TbHeight],
	[TBWIDTH] [TbWidth],
	cast([FULLPATH] as nvarchar(4000)) [FullPath],
	cast([TBFULLPATH] as nvarchar(4000)) [TbfullPath],
	[WEBSITEORDER] [WebSiteOrder],
	[SHOWONWEB] [ShowonWeb],
	cast([WEBFILENAME] as nvarchar(4000)) [WebFileName],
	cast([WEBUNCPATH] as nvarchar(4000)) [WebUncPath],
	cast([REJECTIONREASON] as nvarchar(4000)) [RejectionReason],
	[ISMAINADVERTISING] [IsMainAdvertising]
From stg.[Auct_Photo_Raw]
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


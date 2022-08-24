
  
  if object_id ('"dbo"."Auct_Photo__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Photo__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Photo__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Photo__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Photo__dbt_tmp_temp_view as
    
Select
	cast([PhotoID] as int) [PhotoID],
	cast([PhotoTypeID] as int) [PhotoTypeID],
	cast([PhotoStatusID] as int) [PhotoStatusID],
	cast([ItemID] as int) [ItemID],
	cast([FileName] as nvarchar(4000)) [FileName],
	cast([UncPath] as nvarchar(4000)) [UncPath],
	cast([PhotoSize] as int) [PhotoSize],
	cast([Height] as int) [Height],
	cast([Width] as int) [Width],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([TbFileName] as nvarchar(4000)) [TbFileName],
	cast([TbPhotoSize] as int) [TbPhotoSize],
	cast([TbUncPath] as nvarchar(4000)) [TbUncPath],
	cast([TbHeight] as int) [TbHeight],
	cast([TbWidth] as int) [TbWidth],
	cast([FullPath] as nvarchar(4000)) [FullPath],
	cast([TbfullPath] as nvarchar(4000)) [TbfullPath],
	cast([WebSiteOrder] as int) [WebSiteOrder],
	cast([ShowonWeb] as int) [ShowonWeb],
	cast([WebFileName] as nvarchar(4000)) [WebFileName],
	cast([WebUncPath] as nvarchar(4000)) [WebUncPath],
	cast([RejectionReason] as nvarchar(4000)) [RejectionReason],
	cast([IsMainAdvertising] as int) [IsMainAdvertising] 
From stg.[Auct_Photo_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Photo__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Photo__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Photo__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Photo__dbt_tmp_temp_view"
    end



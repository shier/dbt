
  
  if object_id ('"dbo"."Auct_MediaPhotoPass__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_MediaPhotoPass__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_MediaPhotoPass__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_MediaPhotoPass__dbt_tmp"
    end


   EXEC('create view dbo.Auct_MediaPhotoPass__dbt_tmp_temp_view as
    
Select
	cast([MediaPhotoPassID] as int) [MEDIAPHOTOPASSID],
	cast([MediaAuctionID] as int) [MEDIAAUCTIONID],
	cast([PhotoPassNumber] as nvarchar(4000)) [PHOTOPASSNUMBER],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_MediaPhotoPass_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_MediaPhotoPass__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_MediaPhotoPass__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_MediaPhotoPass__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_MediaPhotoPass__dbt_tmp_temp_view"
    end




  
  if object_id ('"dbo"."Auct_MediaAuction__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_MediaAuction__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_MediaAuction__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_MediaAuction__dbt_tmp"
    end


   EXEC('create view dbo.Auct_MediaAuction__dbt_tmp_temp_view as
    
Select
	cast([MediaAuctionID] as int) [MEDIAAUCTIONID],
	cast([MediaID] as int) [MEDIAID],
	cast([AuctionID] as int) [AUCTIONID],
	cast([AnticipatedDate] as datetime) [ANTICIPATEDDATE],
	cast([PublishPhotos] as nvarchar(4000)) [PUBLISHPHOTOS],
	cast([Galainvites] as int) [GALAINVITES],
	cast([Comments] as nvarchar(4000)) [COMMENTS],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_MediaAuction_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_MediaAuction__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_MediaAuction__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_MediaAuction__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_MediaAuction__dbt_tmp_temp_view"
    end



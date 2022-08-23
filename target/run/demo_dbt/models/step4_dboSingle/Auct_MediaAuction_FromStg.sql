
  
  if object_id ('"dbo"."Auct_MediaAuction_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_MediaAuction_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_MediaAuction_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_MediaAuction_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_MediaAuction_FromStg__dbt_tmp_temp_view as
    
Select
	cast([MediaAuctionID] as int) [MediaAuctionID],
	cast([MediaID] as int) [MediaID],
	cast([AuctionID] as int) [AuctionID],
	cast([AnticipatedDate] as datetime) [AnticIPatedDate],
	cast([PublishPhotos] as nvarchar(4000)) [PublishPhotos],
	cast([Galainvites] as int) [Galainvites],
	cast([Comments] as nvarchar(4000)) [Comments],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_MediaAuction_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_MediaAuction_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_MediaAuction_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_MediaAuction_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_MediaAuction_FromStg__dbt_tmp_temp_view"
    end




  
  if object_id ('"dbo"."Auct_SubordinateContact__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SubordinateContact__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_SubordinateContact__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_SubordinateContact__dbt_tmp"
    end


   EXEC('create view dbo.Auct_SubordinateContact__dbt_tmp_temp_view as
    
Select
	cast([SubordinateContactID] as int) [SUBORDINATECONTACTID],
	cast([MediaAuctionID] as int) [MEDIAAUCTIONID],
	cast([SponsorAuctionID] as int) [SPONSORAUCTIONID],
	cast([VendorID] as int) [VENDORID],
	cast([ContactID] as int) [CONTACTID],
	cast([MediaPositionID] as int) [MEDIAPOSITIONID],
	cast([DaysCovering] as nvarchar(4000)) [DAYSCOVERING],
	cast([JobTitle] as nvarchar(4000)) [JOBTITLE],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_SubordinateContact_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_SubordinateContact__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_SubordinateContact__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_SubordinateContact__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SubordinateContact__dbt_tmp_temp_view"
    end



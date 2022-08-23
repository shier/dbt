
  
  if object_id ('"dbo"."Auct_SubordinateContact_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SubordinateContact_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_SubordinateContact_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_SubordinateContact_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_SubordinateContact_FromStg__dbt_tmp_temp_view as
    
Select
	cast([SubordinateContactID] as int) [SubordinateContactID],
	cast([MediaAuctionID] as int) [MediaAuctionID],
	cast([SponsorAuctionID] as int) [SponsorAuctionID],
	cast([VendorID] as int) [VendorID],
	cast([ContactID] as int) [ContactID],
	cast([MediaPositionID] as int) [MediaPositionID],
	cast([DaysCovering] as nvarchar(4000)) [DaysCovering],
	cast([JobTitle] as nvarchar(4000)) [JobTitle],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_SubordinateContact_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_SubordinateContact_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_SubordinateContact_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_SubordinateContact_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SubordinateContact_FromStg__dbt_tmp_temp_view"
    end



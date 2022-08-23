
  
  if object_id ('"dbo"."Auct_SponsorParking_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SponsorParking_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_SponsorParking_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_SponsorParking_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_SponsorParking_FromStg__dbt_tmp_temp_view as
    
Select
	cast([SponsorParkingID] as int) [SponsorParkingID],
	cast([ParkingTypeID] as int) [ParkingTypeID],
	cast([SponsorAuctionID] as int) [SponsorAuctionID],
	cast([SponsorParkingNumber] as int) [SponsorParkingNumber],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_SponsorParking_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_SponsorParking_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_SponsorParking_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_SponsorParking_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SponsorParking_FromStg__dbt_tmp_temp_view"
    end



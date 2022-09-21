
  
  if object_id ('"dbo"."Auct_AbsenteeBID__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AbsenteeBID__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_AbsenteeBID__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_AbsenteeBID__dbt_tmp"
    end


   EXEC('create view dbo.Auct_AbsenteeBID__dbt_tmp_temp_view as
    
Select
	cast([LotNumber] as numeric(18,1)) [LOTNUMBER],
	cast([MaxBID] as numeric(19,4)) [MAXBID],
	cast([AbsenteeBidID] as int) [ABSENTEEBIDID],
	cast([AuctionBidderID] as int) [AUCTIONBIDDERID],
	cast([ConsignmentID] as int) [CONSIGNMENTID],
	cast([AuctionID] as int) [AUCTIONID],
	cast([Contactphone1] as nvarchar(4000)) [CONTACTPHONE1],
	cast([Contactphone2] as nvarchar(4000)) [CONTACTPHONE2],
	cast([Note] as nvarchar(4000)) [NOTE],
	cast([AbsenteeTypeIDBit] as int) [ABSENTEETYPEIDBIT] 
From stg.[Auct_AbsenteeBID_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_AbsenteeBID__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_AbsenteeBID__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_AbsenteeBID__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AbsenteeBID__dbt_tmp_temp_view"
    end



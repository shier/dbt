
  
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
	cast([AbsenteeBidID] as int) [AbSenteebIDid],
	cast([LotNumber] as numeric(18,1)) [LotNumber],
	cast([MaxBID] as numeric(19,4)) [MaxbID],
	cast([AuctionBidderID] as int) [AuctionbIDderid],
	cast([ConsignmentID] as int) [ConSignmentID],
	cast([AuctionID] as int) [AuctionID],
	cast([Contactphone1] as nvarchar(4000)) [ContactPhone1],
	cast([Contactphone2] as nvarchar(4000)) [ContactPhone2],
	cast([Note] as nvarchar(4000)) [Note],
	cast([AbsenteeTypeIDBit] as int) [AbSenteeTypeIDBIT] 
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



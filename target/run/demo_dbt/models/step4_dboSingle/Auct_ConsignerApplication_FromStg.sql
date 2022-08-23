
  
  if object_id ('"dbo"."Auct_ConsignerApplication_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ConsignerApplication_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_ConsignerApplication_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_ConsignerApplication_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_ConsignerApplication_FromStg__dbt_tmp_temp_view as
    
Select
	cast([ConsignerApplictionID] as int) [ConsignerApplictionID],
	cast([AuctionID] as nvarchar(4000)) [AuctionID],
	cast([DealerLicenseNumber] as nvarchar(4000)) [DealerLicenseNumber],
	cast([AuctionName] as nvarchar(4000)) [AuctionName],
	cast([DateRange] as nvarchar(4000)) [DateRange],
	cast([FullStateName] as nvarchar(4000)) [FullStateName],
	cast([Page1Footer] as nvarchar(4000)) [Page1Footer] 
From stg.[Auct_ConsignerApplication_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_ConsignerApplication_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_ConsignerApplication_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_ConsignerApplication_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ConsignerApplication_FromStg__dbt_tmp_temp_view"
    end



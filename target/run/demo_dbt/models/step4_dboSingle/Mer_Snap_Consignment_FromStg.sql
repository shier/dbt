
  
  if object_id ('"dbo"."Mer_Snap_Consignment_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Mer_Snap_Consignment_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Mer_Snap_Consignment_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Mer_Snap_Consignment_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Mer_Snap_Consignment_FromStg__dbt_tmp_temp_view as
    
Select
	cast([ConsignmentID] as int) [ConsignmentID],
	cast([AuctionID] as int) [AuctionID],
	cast([ReviewStateID] as int) [ReviewStateID],
	cast([ReviewStateDate] as date) [ReviewStateDate],
	cast([ModifiedDateTime] as datetime) [ModifiedDateTime],
	cast([ReviewStateName] as nvarchar(4000)) [ReviewStateName] 
From stg.[Mer_Snap_Consignment_FinalView]
    ');

  CREATE TABLE "dbo"."Mer_Snap_Consignment_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Mer_Snap_Consignment_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Mer_Snap_Consignment_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Mer_Snap_Consignment_FromStg__dbt_tmp_temp_view"
    end



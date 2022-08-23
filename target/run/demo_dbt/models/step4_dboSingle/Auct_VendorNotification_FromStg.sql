
  
  if object_id ('"dbo"."Auct_VendorNotification_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_VendorNotification_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_VendorNotification_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_VendorNotification_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_VendorNotification_FromStg__dbt_tmp_temp_view as
    
Select
	cast([VendorNotificationID] as int) [VendorNotificationID],
	cast([VendorID] as int) [VendorID],
	cast([AuctionType] as nvarchar(4000)) [AuctionType],
	cast([ReceiveInfo] as nvarchar(4000)) [ReceiveInfo],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([Created] as datetime) [Created] 
From stg.[Auct_VendorNotification_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_VendorNotification_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_VendorNotification_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_VendorNotification_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_VendorNotification_FromStg__dbt_tmp_temp_view"
    end



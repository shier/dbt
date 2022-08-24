
  
  if object_id ('"dbo"."Auct_ProfileData__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ProfileData__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_ProfileData__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_ProfileData__dbt_tmp"
    end


   EXEC('create view dbo.Auct_ProfileData__dbt_tmp_temp_view as
    
Select
	cast([ProfileID] as int) [ProFileID],
	cast([BgColor] as nvarchar(4000)) [BgColor],
	cast([WizardColor] as nvarchar(4000)) [WizardColor],
	cast([TextColor] as nvarchar(4000)) [TextColor],
	cast([WizardText] as nvarchar(4000)) [WizardText],
	cast([BidderPhoto] as nvarchar(4000)) [BidderPhoto],
	cast([UserTimeOut] as nvarchar(4000)) [UserTimeOut],
	cast([CustListall] as nvarchar(4000)) [CustListall],
	cast([CustsumDisplay] as nvarchar(4000)) [CustsumDisplay],
	cast([CustContact] as nvarchar(4000)) [CustContact],
	cast([DefaultAuctionID] as int) [DefaultAuctionID],
	cast([PulseQueueID] as int) [PulseQueueID] 
From stg.[Auct_ProfileData_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_ProfileData__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_ProfileData__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_ProfileData__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ProfileData__dbt_tmp_temp_view"
    end



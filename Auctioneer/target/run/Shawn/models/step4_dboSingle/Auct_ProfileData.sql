
  
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
	cast([ProfileID] as int) [PROFILEID],
	cast([BgColor] as nvarchar(4000)) [BGCOLOR],
	cast([WizardColor] as nvarchar(4000)) [WIZARDCOLOR],
	cast([TextColor] as nvarchar(4000)) [TEXTCOLOR],
	cast([WizardText] as nvarchar(4000)) [WIZARDTEXT],
	cast([BidderPhoto] as nvarchar(4000)) [BIDDERPHOTO],
	cast([UserTimeOut] as nvarchar(4000)) [USERTIMEOUT],
	cast([CustListall] as nvarchar(4000)) [CUSTLISTALL],
	cast([CustsumDisplay] as nvarchar(4000)) [CUSTSUMDISPLAY],
	cast([CustContact] as nvarchar(4000)) [CUSTCONTACT],
	cast([DefaultAuctionID] as int) [DEFAULTAUCTIONID],
	cast([PulseQueueID] as int) [PULSEQUEUEID] 
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



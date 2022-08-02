
  
  if object_id ('"stg"."Auct_ProfileData_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ProfileData_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_ProfileData_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_ProfileData_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_ProfileData_Inter__dbt_tmp_temp_view as
    
Select
	cast(WIZARDCOLOR as nvarchar(4000)) WizardColor,
	cast(TEXTCOLOR as nvarchar(4000)) TextColor,
	cast(WIZARDTEXT as nvarchar(4000)) WizardText,
	cast(BIDDERPHOTO as nvarchar(4000)) BidderPhoto,
	cast(USERTIMEOUT as nvarchar(4000)) UserTimeOut,
	cast(CUSTLISTALL as nvarchar(4000)) CustListall,
	cast(BGCOLOR as nvarchar(4000)) BgColor,
	cast(CUSTSUMDISPLAY as nvarchar(4000)) CustsumDisplay,
	cast(CUSTCONTACT as nvarchar(4000)) CustContact,
	PROFILEID ProfileID,
	DEFAULTAUCTIONID DefaultAuctionID,
	PULSEQUEUEID PulseQueueID
From Auct_ProfileData_Raw
    ');

  CREATE TABLE "stg"."Auct_ProfileData_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_ProfileData_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_ProfileData_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ProfileData_Inter__dbt_tmp_temp_view"
    end



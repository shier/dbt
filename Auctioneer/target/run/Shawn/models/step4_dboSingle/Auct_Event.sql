
  
  if object_id ('"dbo"."Auct_Event__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Event__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Event__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Event__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Event__dbt_tmp_temp_view as
    
Select
	cast([EventID] as int) [EVENTID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Code] as nvarchar(4000)) [CODE],
	cast([ProjectCode] as nvarchar(4000)) [PROJECTCODE],
	cast([Year] as int) [YEAR],
	cast([ParentEventID] as int) [PARENTEVENTID],
	cast([EventTypeID] as int) [EVENTTYPEID],
	cast([StartDate] as DATETIME) [STARTDATE],
	cast([EndDate] as DATETIME) [ENDDATE],
	cast([Created] as DATETIME) [CREATED],
	cast([Active] as int) [ACTIVE],
	cast([CreatedByUserID] as int) [CREATEDBYUSERID],
	cast([LocationAddressID] as int) [LOCATIONADDRESSID],
	cast([ShippingAddressID] as int) [SHIPPINGADDRESSID],
	cast([BillingAddressID] as int) [BILLINGADDRESSID],
	cast([ImageURL] as nvarchar(4000)) [IMAGEURL],
	cast([VenueID] as int) [VENUEID] 
From stg.[Auct_Event_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Event__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Event__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Event__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Event__dbt_tmp_temp_view"
    end



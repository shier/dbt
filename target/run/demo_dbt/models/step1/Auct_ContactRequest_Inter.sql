
  
  if object_id ('"stg"."Auct_ContactRequest_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ContactRequest_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_ContactRequest_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_ContactRequest_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_ContactRequest_Inter__dbt_tmp_temp_view as
    
Select
	[CONTACTREQUESTID] [ContactRequestID],
	[FROMCONTACTID] [FromContactID],
	[REQUESTTYPEID] [RequestTypeID],
	[ASSIGNEDCONTACTID] [AssignedContactID],
	[COMPANYID] [CompanyID],
	[PHONEID] [PhoneID],
	[ADDRESSID] [AddressID],
	cast([EMAILADDRESS] as nvarchar(4000)) [EmailAddress],
	cast([REQUESTFULFILLED] as nvarchar(4000)) [RequestFulfilled],
	[DATEFULFILLED] [DateFulfilled],
	cast([SUBJECT] as nvarchar(4000)) [SuBJect],
	cast([CUSTOMERCOMMENTS] as nvarchar(4000)) [CustomerComments],
	cast([REQUESTNOTES] as nvarchar(4000)) [RequestNotes],
	[APPOINTMENTTIMESTAMP] [AppointmentTimeStamp],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_ContactRequest_Raw]
    ');

  CREATE TABLE "stg"."Auct_ContactRequest_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_ContactRequest_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_ContactRequest_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ContactRequest_Inter__dbt_tmp_temp_view"
    end



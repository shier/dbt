
  
  if object_id ('"dbo"."Auct_ContactRequest__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ContactRequest__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_ContactRequest__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_ContactRequest__dbt_tmp"
    end


   EXEC('create view dbo.Auct_ContactRequest__dbt_tmp_temp_view as
    
Select
	cast([ContactRequestID] as int) [ContactRequestID],
	cast([FromContactID] as int) [FromContactID],
	cast([RequestTypeID] as int) [RequestTypeID],
	cast([AssignedContactID] as int) [AssignedContactID],
	cast([CompanyID] as int) [CompanyID],
	cast([PhoneID] as int) [PhoneID],
	cast([AddressID] as int) [AddressID],
	cast([EmailAddress] as nvarchar(4000)) [EmailAddress],
	cast([RequestFulfilled] as nvarchar(4000)) [RequestFulfilled],
	cast([DateFulfilled] as DATETIME) [DateFulfilled],
	cast([SuBJect] as nvarchar(4000)) [SuBJect],
	cast([CustomerComments] as nvarchar(4000)) [CustomerComments],
	cast([RequestNotes] as nvarchar(4000)) [RequestNotes],
	cast([AppointmentTimeStamp] as DATETIME) [AppointmentTimeStamp],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_ContactRequest_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_ContactRequest__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_ContactRequest__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_ContactRequest__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ContactRequest__dbt_tmp_temp_view"
    end



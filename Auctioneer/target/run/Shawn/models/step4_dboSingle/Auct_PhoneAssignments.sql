
  
  if object_id ('"dbo"."Auct_PhoneAssignments__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_PhoneAssignments__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_PhoneAssignments__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_PhoneAssignments__dbt_tmp"
    end


   EXEC('create view dbo.Auct_PhoneAssignments__dbt_tmp_temp_view as
    
Select
	cast([PhoneAssignmentID] as int) [PHONEASSIGNMENTID],
	cast([CustomerAccountID] as int) [CUSTOMERACCOUNTID],
	cast([PhoneID] as int) [PHONEID],
	cast([PhoneStatusID] as int) [PHONESTATUSID],
	cast([PhoneTypeID] as int) [PHONETYPEID],
	cast([IsDefault] as char(1)) [ISDEFAULT],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_PhoneAssignments_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_PhoneAssignments__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_PhoneAssignments__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_PhoneAssignments__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_PhoneAssignments__dbt_tmp_temp_view"
    end



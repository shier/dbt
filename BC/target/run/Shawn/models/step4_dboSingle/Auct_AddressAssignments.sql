
  
  if object_id ('"dbo"."Auct_AddressAssignments__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AddressAssignments__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_AddressAssignments__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_AddressAssignments__dbt_tmp"
    end


   EXEC('create view dbo.Auct_AddressAssignments__dbt_tmp_temp_view as
    
Select
	cast([AssignmentID] as int) [ASSIGNMENTID],
	cast([AddressID] as int) [ADDRESSID],
	cast([CustomerAccountID] as int) [CUSTOMERACCOUNTID],
	cast([AddressStatusID] as int) [ADDRESSSTATUSID],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([IsDefault] as char(1)) [ISDEFAULT],
	cast([Adddescr] as varchar(8000)) [ADDDESCR],
	cast([CompanyID] as int) [COMPANYID],
	cast([AddressTypeID] as int) [ADDRESSTYPEID] 
From stg.[Auct_AddressAssignments_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_AddressAssignments__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_AddressAssignments__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_AddressAssignments__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AddressAssignments__dbt_tmp_temp_view"
    end



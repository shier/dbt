
  
  if object_id ('"stg"."Auct_AddressAssignments_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AddressAssignments_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_AddressAssignments_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_AddressAssignments_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_AddressAssignments_Inter__dbt_tmp_temp_view as
    
Select
	[ASSIGNMENTID] [AssignmentID],
	[ADDRESSID] [AddressID],
	[CUSTOMERACCOUNTID] [CustomerAccountID],
	[ADDRESSSTATUSID] [AddressStatusID],
	[UPDATEEVENTID] [UpdateEventID],
	cast([ISDEFAULT] as nvarchar(4000)) [IsDefault],
	cast([ADDDESCR] as nvarchar(4000)) [Adddescr],
	[COMPANYID] [CompanyID],
	[ADDRESSTYPEID] [AddressTypeID]
From stg.[Auct_AddressAssignments_Raw]
    ');

  CREATE TABLE "stg"."Auct_AddressAssignments_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_AddressAssignments_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_AddressAssignments_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AddressAssignments_Inter__dbt_tmp_temp_view"
    end



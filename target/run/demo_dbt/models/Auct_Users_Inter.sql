
  
  if object_id ('"stg"."Auct_Users_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Users_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Users_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Users_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Users_Inter__dbt_tmp_temp_view as
    
Select
	cast(NAME as nvarchar(4000)) Name,
	cast(EMAILADDRESS as nvarchar(4000)) EmailAddress,
	cast(PASSWORD as nvarchar(4000)) Password,
	cast(SECRETANSWER as nvarchar(4000)) SecretAnswer,
	cast(ENABLED as nvarchar(4000)) Enabled,
	cast(TITLE as nvarchar(4000)) Title,
	cast(DESCRIPTON as nvarchar(4000)) DeScripton,
	cast(ADDRESS as nvarchar(4000)) Address,
	cast(CITY as nvarchar(4000)) City,
	cast(STATE as nvarchar(4000)) State,
	cast(POSTALCODE as nvarchar(4000)) PostalCode,
	cast(REASON as nvarchar(4000)) Reason,
	cast(WINLOGON as nvarchar(4000)) WinLogon,
	cast(WINDOMAIN as nvarchar(4000)) WinDomain,
	cast(SMSNOTIFICATIONNUMBER as nvarchar(4000)) SMSNotificationNumber,
	cast(PHONE1 as nvarchar(4000)) Phone1,
	cast(PHONE2 as nvarchar(4000)) Phone2,
	USERSID UsersID,
	QUESTIONID QuestionID,
	UPDATEEVENTID UpdateEventID,
	SMSNOTIFICATIONBIT SMSNotificationBit,
	DEPARTMENTID DepartmentID,
	LASTLOGGEDIN LastLoggedin,
	LASTACTIVITY LastActivity,
	CREATED Created
From Auct_Users_Raw
    ');

  CREATE TABLE "stg"."Auct_Users_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Users_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Users_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Users_Inter__dbt_tmp_temp_view"
    end



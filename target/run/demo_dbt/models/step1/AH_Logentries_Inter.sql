
  
  if object_id ('"stg"."AH_Logentries_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Logentries_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_Logentries_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_Logentries_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_Logentries_Inter__dbt_tmp_temp_view as
    
Select
	[Id] [ID],
	[Priority] [Priority],
	[EventID] [EventID],
	[SQLDateStamp] [SqlDaTestamp],
	[EntryDateStamp] [EntryDaTestamp],
	cast([MachineName] as nvarchar(4000)) [MachineName],
	cast([Message] as nvarchar(4000)) [Message],
	cast([Title] as nvarchar(4000)) [Title],
	cast([FunctionalArea] as nvarchar(4000)) [FunctionalArea],
	cast([Severity] as nvarchar(4000)) [Severity],
	cast([Actor] as nvarchar(4000)) [Actor],
	cast([ExceptionClass] as nvarchar(4000)) [ExceptionClass],
	cast([StackTrace] as nvarchar(4000)) [Stacktrace],
	cast([Properties] as nvarchar(4000)) [Properties]
From stg.[AH_Logentries_Raw]
    ');

  CREATE TABLE "stg"."AH_Logentries_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_Logentries_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_Logentries_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Logentries_Inter__dbt_tmp_temp_view"
    end



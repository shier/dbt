
  
  if object_id ('"stg"."Auct_TRuncation_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_TRuncation_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_TRuncation_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_TRuncation_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_TRuncation_Inter__dbt_tmp_temp_view as
    
Select
	latchLocker LatchLocker,
	cast(latchTaskName as nvarchar(4000)) LatchTaskName,
	cast(latchMachineGUID as nvarchar(4000)) LatchMachineGUID,
	cast(LatchKey as nvarchar(4000)) LatchKey
From Auct_TRuncation_Raw
    ');

  CREATE TABLE "stg"."Auct_TRuncation_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_TRuncation_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_TRuncation_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_TRuncation_Inter__dbt_tmp_temp_view"
    end




  
  if object_id ('"stg"."CC_ModeldifferenceaSpect_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ModeldifferenceaSpect_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_ModeldifferenceaSpect_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_ModeldifferenceaSpect_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_ModeldifferenceaSpect_Inter__dbt_tmp_temp_view as
    
Select
	cast(Owner as nvarchar(4000)) Owner,
	cast(Oid as nvarchar(4000)) OID,
	cast(Name as nvarchar(4000)) Name,
	cast(Xml as nvarchar(4000)) Xml,
	OptimisticLockField OptimisticLockField,
	GCRecord GcRecord
From CC_ModeldifferenceaSpect_Raw
    ');

  CREATE TABLE "stg"."CC_ModeldifferenceaSpect_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_ModeldifferenceaSpect_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_ModeldifferenceaSpect_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ModeldifferenceaSpect_Inter__dbt_tmp_temp_view"
    end



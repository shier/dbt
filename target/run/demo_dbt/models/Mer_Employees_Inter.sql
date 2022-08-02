
  
  if object_id ('"stg"."Mer_Employees_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_Employees_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_Employees_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Mer_Employees_Inter__dbt_tmp"
    end


   EXEC('create view stg.Mer_Employees_Inter__dbt_tmp_temp_view as
    
Select
	CreatedDate CreatedDate,
	UpdatedDate Updateddate,
	RemovedDate RemovedDate,
	cast(Id as nvarchar(4000)) ID,
	cast(MerchantId as nvarchar(4000)) MerchantID,
	cast(Name as nvarchar(4000)) Name,
	cast(NickName as nvarchar(4000)) NickName,
	cast(Email as nvarchar(4000)) Email,
	cast(Pin as nvarchar(4000)) Pin,
	cast(Role as nvarchar(4000)) Role
From Mer_Employees_Raw
    ');

  CREATE TABLE "stg"."Mer_Employees_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_Employees_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Mer_Employees_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_Employees_Inter__dbt_tmp_temp_view"
    end



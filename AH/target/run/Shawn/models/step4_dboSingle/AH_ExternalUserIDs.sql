
  
  if object_id ('"dbo"."AH_ExternalUserIDs__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_ExternalUserIDs__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_ExternalUserIDs__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_ExternalUserIDs__dbt_tmp"
    end


   EXEC('create view dbo.AH_ExternalUserIDs__dbt_tmp_temp_view as
    
Select
	cast([ProvIDErName] as nvarchar(4000)) [ProvIDErName],
	cast([ProvIDErUserID] as nvarchar(4000)) [ProvIDErUserID],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([ID] as int) [ID],
	cast([LocalUserID] as int) [LocalUserID] 
From stg.[AH_ExternalUserIDs_FinalView]
    ');

  CREATE TABLE "dbo"."AH_ExternalUserIDs__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_ExternalUserIDs__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_ExternalUserIDs__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_ExternalUserIDs__dbt_tmp_temp_view"
    end




  
  if object_id ('"dbo"."AH_ImportedUserMap__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_ImportedUserMap__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_ImportedUserMap__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_ImportedUserMap__dbt_tmp"
    end


   EXEC('create view dbo.AH_ImportedUserMap__dbt_tmp_temp_view as
    
Select
	cast([LocalUserID] as int) [LocalUserID],
	cast([ForeignUserID] as int) [ForeignUserID],
	cast([ImportedUserName] as nvarchar(4000)) [ImportedUserName] 
From stg.[AH_ImportedUserMap_FinalView]
    ');

  CREATE TABLE "dbo"."AH_ImportedUserMap__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_ImportedUserMap__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_ImportedUserMap__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_ImportedUserMap__dbt_tmp_temp_view"
    end




  
  if object_id ('"dbo"."AH_UserMessages_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_UserMessages_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_UserMessages_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_UserMessages_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.AH_UserMessages_FromStg__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [ID],
	cast([SEnderID] as int) [SEnderID],
	cast([RecipientID] as int) [RecipientID],
	cast([MasTerMessageID] as int) [MasTerMessageID],
	cast([ListingID] as int) [ListingID],
	cast([Sent] as datetime) [Sent],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([SuBJect] as nvarchar(4000)) [SuBJect],
	cast([Body] as nvarchar(4000)) [Body],
	cast([SEnderStatus] as nvarchar(4000)) [SEnderStatus],
	cast([RecipientStatus] as nvarchar(4000)) [RecipientStatus],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser] 
From stg.[AH_UserMessages_FinalView]
    ');

  CREATE TABLE "dbo"."AH_UserMessages_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_UserMessages_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_UserMessages_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_UserMessages_FromStg__dbt_tmp_temp_view"
    end



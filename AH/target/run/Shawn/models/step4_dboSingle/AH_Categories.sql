
  
  if object_id ('"dbo"."AH_Categories__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Categories__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_Categories__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_Categories__dbt_tmp"
    end


   EXEC('create view dbo.AH_Categories__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [PrimaryCategoryID],
	cast([ParentCategoryID] as int) [ParentCategoryID],
	cast([DisplayOrder] as int) [DisplayOrder],
	cast([Lft] as int) [lft],
	cast([Rgt] as int) [rgt],
	cast([CreatedOn] as datetime) [Created],
	cast([UpdatedOn] as datetime) [UpdatedDate],
	cast([DeletedOn] as datetime) [DeletedDate],
	cast([RolesAllowed] as nvarchar(100)) [RolesAllowed],
	cast([EnabledCustomProperty] as nvarchar(100)) [EnabledCustomProperty],
	cast([Name] as nvarchar(500)) [Name],
	cast([LastUpdatedUser] as nvarchar(500)) [LastUpdatedUser],
	cast([Type] as nvarchar(50)) [Type],
	cast([MvcAction] as nvarchar(100)) [MVCAction] 
From stg.[AH_Categories_FinalView]
    ');

  CREATE TABLE "dbo"."AH_Categories__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_Categories__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_Categories__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Categories__dbt_tmp_temp_view"
    end



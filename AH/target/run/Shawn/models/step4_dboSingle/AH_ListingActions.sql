
  
  if object_id ('"dbo"."AH_ListingActions__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_ListingActions__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_ListingActions__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_ListingActions__dbt_tmp"
    end


   EXEC('create view dbo.AH_ListingActions__dbt_tmp_temp_view as
    
Select
	cast([Description] as nvarchar(4000)) [Description],
	cast([LastUpdatedUser] as nvarchar(500)) [LastUpdatedUser],
	cast([Reason] as nvarchar(4000)) [Reason],
	cast([Status] as nvarchar(100)) [Status],
	cast([CreatedOn] as datetime) [Created],
	cast([UpdatedOn] as datetime) [UpdatedDate],
	cast([DeletedOn] as datetime) [DeletedDate],
	cast([Actiondttm] as datetime) [ActionDTTM],
	cast([Amount] as decimal(24,2)) [Amount],
	cast([ProxyAmount] as decimal(24,2)) [ProxyAmount],
	cast([Userentered] as bit) [HasUserEntered],
	cast([ID] as int) [ListingActionID],
	cast([UserID] as int) [UserID],
	cast([ListingID] as int) [ListingID],
	cast([Quantity] as int) [QTY] 
From stg.[AH_ListingActions_FinalView]
    ');

  CREATE TABLE "dbo"."AH_ListingActions__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_ListingActions__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_ListingActions__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_ListingActions__dbt_tmp_temp_view"
    end



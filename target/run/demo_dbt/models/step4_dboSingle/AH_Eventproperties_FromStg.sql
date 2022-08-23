
  
  if object_id ('"dbo"."AH_Eventproperties_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Eventproperties_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_Eventproperties_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_Eventproperties_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.AH_Eventproperties_FromStg__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [ID],
	cast([StringnativeValue] as nvarchar(4000)) [StringnativeValue],
	cast([EnumnativeValue] as nvarchar(4000)) [EnumnativeValue],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([DecimalnativeValue] as numeric(194)) [DecimalnativeValue],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([DateTimenativeValue] as datetime) [DateTimenativeValue],
	cast([BoolnativeValue] as bit) [BoolnativeValue],
	cast([IntnativeValue] as int) [IntnativeValue],
	cast([AuctionEventID] as int) [AuctionEventID],
	cast([CustomFieldID] as int) [CustomFieldID] 
From stg.[AH_Eventproperties_FinalView]
    ');

  CREATE TABLE "dbo"."AH_Eventproperties_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_Eventproperties_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_Eventproperties_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Eventproperties_FromStg__dbt_tmp_temp_view"
    end



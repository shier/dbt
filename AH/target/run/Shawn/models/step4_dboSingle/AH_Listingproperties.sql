
  
  if object_id ('"dbo"."AH_Listingproperties__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Listingproperties__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_Listingproperties__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_Listingproperties__dbt_tmp"
    end


   EXEC('create view dbo.AH_Listingproperties__dbt_tmp_temp_view as
    
Select
	cast([DecimalnativeValue] as decimal(29,14)) [DecimalNativeValue],
	cast([StringnativeValue] as nvarchar(4000)) [StringNativeValue],
	cast([EnumnativeValue] as nvarchar(200)) [EnumNativeValue],
	cast([LastUpdatedUser] as nvarchar(500)) [LastUpdatedUser_RWXListingProperties],
	cast([CreatedOn] as datetime) [Created_RWXListingProperties],
	cast([UpdatedOn] as datetime) [UpdatedDate_RWXListingProperties],
	cast([DeletedOn] as datetime) [DeletedDate_RWXListingProperties],
	cast([DateTimenativeValue] as datetime) [DateTimeNativeValue],
	cast([BoolnativeValue] as bit) [HasBoolNativeValue],
	cast([ID] as int) [ID],
	cast([IntnativeValue] as int) [IntNativeValue],
	cast([ListingID] as int) [ListingID],
	cast([CustomFieldID] as int) [CustomFieldID] 
From stg.[AH_Listingproperties_FinalView]
    ');

  CREATE TABLE "dbo"."AH_Listingproperties__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_Listingproperties__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_Listingproperties__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Listingproperties__dbt_tmp_temp_view"
    end



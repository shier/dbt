
  
  if object_id ('"dbo"."Auct_FeeType_Amenities_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_FeeType_Amenities_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_FeeType_Amenities_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_FeeType_Amenities_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_FeeType_Amenities_FromStg__dbt_tmp_temp_view as
    
Select
	cast([FeeType_AmenityID] as int) [FeeType_AmenityID],
	cast([FeeTypeID] as int) [FeeTypeID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([StartDate] as datetime) [StartDate],
	cast([EndDate] as datetime) [EndDate],
	cast([Created] as datetime) [Created],
	cast([CreatedByUser] as nvarchar(4000)) [CreatedByUser],
	cast([OrderBy] as int) [OrderBy],
	cast([Active] as bit) [Active] 
From stg.[Auct_FeeType_Amenities_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_FeeType_Amenities_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_FeeType_Amenities_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_FeeType_Amenities_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_FeeType_Amenities_FromStg__dbt_tmp_temp_view"
    end



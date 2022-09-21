
  
  if object_id ('"dbo"."Auct_FeeType_Amenities__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_FeeType_Amenities__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_FeeType_Amenities__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_FeeType_Amenities__dbt_tmp"
    end


   EXEC('create view dbo.Auct_FeeType_Amenities__dbt_tmp_temp_view as
    
Select
	cast([FeeType_AmenityID] as int) [FEETYPE_AMENITYID],
	cast([FeeTypeID] as int) [FEETYPEID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([StartDate] as datetime) [STARTDATE],
	cast([EndDate] as datetime) [ENDDATE],
	cast([Created] as datetime) [CREATED],
	cast([CreatedByUser] as nvarchar(4000)) [CREATEDBYUSER],
	cast([OrderBy] as int) [ORDERBY],
	cast([Active] as bit) [ACTIVE] 
From stg.[Auct_FeeType_Amenities_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_FeeType_Amenities__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_FeeType_Amenities__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_FeeType_Amenities__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_FeeType_Amenities__dbt_tmp_temp_view"
    end



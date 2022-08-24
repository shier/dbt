
  
  if object_id ('"dbo"."Auct_Space__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Space__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Space__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Space__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Space__dbt_tmp_temp_view as
    
Select
	cast([SpaceID] as int) [SpaceID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([BoothID] as int) [BoothID],
	cast([SpaceSizeID] as int) [SpaceSizeID],
	cast([AllocatedPower] as int) [AllocatedPower],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([Phonein] as nvarchar(4000)) [Phonein],
	cast([WiredInternet] as nvarchar(4000)) [WiredInternet],
	cast([WirelessInternet] as nvarchar(4000)) [WirelessInternet] 
From stg.[Auct_Space_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Space__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Space__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Space__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Space__dbt_tmp_temp_view"
    end



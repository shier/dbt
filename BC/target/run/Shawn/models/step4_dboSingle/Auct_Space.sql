
  
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
	cast([SpaceID] as int) [SPACEID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([BoothID] as int) [BOOTHID],
	cast([SpaceSizeID] as int) [SPACESIZEID],
	cast([AllocatedPower] as int) [ALLOCATEDPOWER],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([Phonein] as nvarchar(4000)) [PHONEIN],
	cast([WiredInternet] as nvarchar(4000)) [WIREDINTERNET],
	cast([WirelessInternet] as nvarchar(4000)) [WIRELESSINTERNET] 
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



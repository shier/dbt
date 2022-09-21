
  
  if object_id ('"dbo"."Auct_Media__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Media__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Media__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Media__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Media__dbt_tmp_temp_view as
    
Select
	cast([MediaID] as int) [MEDIAID],
	cast([CustomerAccountID] as int) [CUSTOMERACCOUNTID],
	cast([AddressID] as int) [ADDRESSID],
	cast([MediaTypeID] as int) [MEDIATYPEID],
	cast([Circulation] as nvarchar(4000)) [CIRCULATION],
	cast([StoryIdeas] as nvarchar(4000)) [STORYIDEAS],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_Media_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Media__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Media__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Media__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Media__dbt_tmp_temp_view"
    end




  
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
	cast([MediaID] as int) [MediaID],
	cast([CustomerAccountID] as int) [CustomerAccountID],
	cast([AddressID] as int) [AddressID],
	cast([MediaTypeID] as int) [MediaTypeID],
	cast([Circulation] as nvarchar(4000)) [Circulation],
	cast([StoryIdeas] as nvarchar(4000)) [StoryIdeas],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
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



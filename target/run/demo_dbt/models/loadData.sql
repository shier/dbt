
      
  
  if object_id ('"dbo"."loadData__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."loadData__dbt_tmp_temp_view"
    end


   
  
  if object_id ('"dbo"."loadData__dbt_tmp"','V') is not null
    begin
    drop view "dbo"."loadData__dbt_tmp"
    end


   EXEC('create view dbo.loadData__dbt_tmp_temp_view as
    -- DBT_Auct_Bidder_Target
-- DBT_Auct_Bidder_Source



select * from DBT_Auct_Bidder_Source


    ');

  CREATE TABLE "dbo"."loadData__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.loadData__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."loadData__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."loadData__dbt_tmp_temp_view"
    end



  
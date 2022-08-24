
  
  if object_id ('"dbo"."Auct_BidLimitOverageEmail__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_BidLimitOverageEmail__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_BidLimitOverageEmail__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_BidLimitOverageEmail__dbt_tmp"
    end


   EXEC('create view dbo.Auct_BidLimitOverageEmail__dbt_tmp_temp_view as
    
Select
	cast([EmailAddress] as nvarchar(4000)) [EmailAddress],
	cast([IsActive] as int) [IsActive] 
From stg.[Auct_BidLimitOverageEmail_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_BidLimitOverageEmail__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_BidLimitOverageEmail__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_BidLimitOverageEmail__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_BidLimitOverageEmail__dbt_tmp_temp_view"
    end



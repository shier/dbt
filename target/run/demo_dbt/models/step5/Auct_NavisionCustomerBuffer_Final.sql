
  
  if object_id ('"dbo"."Auct_NavisionCustomerBuffer_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_NavisionCustomerBuffer_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_NavisionCustomerBuffer_Final__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_NavisionCustomerBuffer_Final__dbt_tmp"
    end


   EXEC('create view dbo.Auct_NavisionCustomerBuffer_Final__dbt_tmp_temp_view as
    
Select
	[No],[Name],[Name2],[Address],[Address2],[City],[State],[CountryCode],[PostCode],[Phoneno],[Email],[HomePage],[Status],[StatusMessage],[WrotetoNavision] 
From stg.[Auct_NavisionCustomerBuffer_Final]
    ');

  CREATE TABLE "dbo"."Auct_NavisionCustomerBuffer_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_NavisionCustomerBuffer_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_NavisionCustomerBuffer_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_NavisionCustomerBuffer_Final__dbt_tmp_temp_view"
    end



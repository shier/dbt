
  
  if object_id ('"dbo"."Auct_Phone_Final_FromView__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Phone_Final_FromView__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Phone_Final_FromView__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Phone_Final_FromView__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Phone_Final_FromView__dbt_tmp_temp_view as
    
Select
	[PhoneID],[CountryID],[AreaCode],[PhoneNumber],[Created],[UpdateEventID],[Active],[WebPhoneID] 
From stg.[Auct_Phone_Final_View]
    ');

  CREATE TABLE "dbo"."Auct_Phone_Final_FromView__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Phone_Final_FromView__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Phone_Final_FromView__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Phone_Final_FromView__dbt_tmp_temp_view"
    end



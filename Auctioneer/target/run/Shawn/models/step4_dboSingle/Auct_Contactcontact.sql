
  
  if object_id ('"dbo"."Auct_Contactcontact__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Contactcontact__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Contactcontact__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Contactcontact__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Contactcontact__dbt_tmp_temp_view as
    
Select
	cast([ContactcontactID] as int) [CONTACTCONTACTID],
	cast([ContactTypeID] as int) [CONTACTTYPEID],
	cast([CustomerAccountID] as int) [CUSTOMERACCOUNTID],
	cast([ContactTitle] as varchar(64)) [CONTACTTITLE],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_Contactcontact_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Contactcontact__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Contactcontact__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Contactcontact__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Contactcontact__dbt_tmp_temp_view"
    end




  
  if object_id ('"dbo"."Auct_Customers__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Customers__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Customers__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Customers__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Customers__dbt_tmp_temp_view as
    
Select
	cast([ContactID] as int) [CONTACTID],
	cast([CustomerAccountID] as int) [CUSTOMERACCOUNTID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([EmailAddress] as nvarchar(4000)) [EMAILADDRESS],
	cast([Type] as nvarchar(4000)) [Type],
	cast([ContactTypeID] as int) [CONTACTTYPEID] 
From stg.[Auct_Customers_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Customers__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Customers__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Customers__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Customers__dbt_tmp_temp_view"
    end




  
  if object_id ('"dbo"."Auct_Charity_Consignment__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Charity_Consignment__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Charity_Consignment__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Charity_Consignment__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Charity_Consignment__dbt_tmp_temp_view as
    
Select
	cast([CharityID] as int) [CHARITYID],
	cast([ConsignmentID] as int) [CONSIGNMENTID],
	cast([Active] as int) [ACTIVE] 
From stg.[Auct_Charity_Consignment_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Charity_Consignment__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Charity_Consignment__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Charity_Consignment__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Charity_Consignment__dbt_tmp_temp_view"
    end



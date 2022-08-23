
  
  if object_id ('"dbo"."Auct_AddressStatus_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AddressStatus_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_AddressStatus_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_AddressStatus_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_AddressStatus_FromStg__dbt_tmp_temp_view as
    
Select
	cast([AddressStatusID] as int) [AddressStatusID],
	cast([Name] as varchar(64)) [AddressStatus],
	cast([Created] as datetime) [Created_AddressStatus],
	cast([UpdateEventID] as int) [UpdateEventID_AddressStatus] 
From stg.[Auct_AddressStatus_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_AddressStatus_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_AddressStatus_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_AddressStatus_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AddressStatus_FromStg__dbt_tmp_temp_view"
    end



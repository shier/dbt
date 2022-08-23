
  
  if object_id ('"dbo"."Auct_BCPaymentType_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_BCPaymentType_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_BCPaymentType_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_BCPaymentType_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_BCPaymentType_FromStg__dbt_tmp_temp_view as
    
Select
	cast([BCPaymentTypeID] as int) [BCPaymentTypeID],
	cast([Name] as nvarchar(4000)) [Name] 
From stg.[Auct_BCPaymentType_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_BCPaymentType_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_BCPaymentType_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_BCPaymentType_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_BCPaymentType_FromStg__dbt_tmp_temp_view"
    end



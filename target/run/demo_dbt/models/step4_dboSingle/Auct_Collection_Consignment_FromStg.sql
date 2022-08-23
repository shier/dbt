
  
  if object_id ('"dbo"."Auct_Collection_Consignment_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Collection_Consignment_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Collection_Consignment_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Collection_Consignment_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Collection_Consignment_FromStg__dbt_tmp_temp_view as
    
Select
	cast([CollectionID] as int) [CollectionID],
	cast([ConsignmentID] as int) [ConsignmentID],
	cast([Active] as int) [Active] 
From stg.[Auct_Collection_Consignment_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Collection_Consignment_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Collection_Consignment_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Collection_Consignment_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Collection_Consignment_FromStg__dbt_tmp_temp_view"
    end



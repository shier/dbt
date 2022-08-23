
  
  if object_id ('"dbo"."Auct_Property_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Property_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Property_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Property_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Property_FromStg__dbt_tmp_temp_view as
    
Select
	cast([PropertyID] as int) [PropertyID],
	cast([ConsignmentID] as int) [ConsignmentID],
	cast([PropertyTypeKey] as int) [PropertyTypeKey],
	cast([Description] as nvarchar(4000)) [Description],
	cast([Created] as datetime) [Created],
	cast([PropertySpace] as nvarchar(4000)) [PropertySpace],
	cast([CurrentPropertyTransactionID] as int) [CurrentPropertyTransactionID],
	cast([GUIDStamp] as nvarchar(4000)) [GUIDStamp],
	cast([Active] as nvarchar(4000)) [Active],
	cast([AuctionID] as int) [AuctionID] 
From stg.[Auct_Property_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Property_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Property_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Property_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Property_FromStg__dbt_tmp_temp_view"
    end



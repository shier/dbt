
  
  if object_id ('"dbo"."Auct_SysTranschEMAs_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SysTranschEMAs_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_SysTranschEMAs_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_SysTranschEMAs_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_SysTranschEMAs_FromStg__dbt_tmp_temp_view as
    
Select
	cast([TaBID] as int) [TabID],
	cast([Startlsn] as varbinary(8000)) [Startlsn],
	cast([Endlsn] as varbinary(8000)) [Endlsn],
	cast([TypeID] as int) [TypeID] 
From stg.[Auct_SysTranschEMAs_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_SysTranschEMAs_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_SysTranschEMAs_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_SysTranschEMAs_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SysTranschEMAs_FromStg__dbt_tmp_temp_view"
    end



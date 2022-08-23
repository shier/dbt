
  
  if object_id ('"dbo"."Mer_Employees_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Mer_Employees_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Mer_Employees_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Mer_Employees_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Mer_Employees_FromStg__dbt_tmp_temp_view as
    
Select
	cast([ID] as varchar(100)) [ID],
	cast([CreatedDate] as datetime) [Created],
	cast([Updateddate] as datetime) [UpdatedDate],
	cast([RemovedDate] as datetime) [DeletedDate],
	cast([MerchantID] as varchar(100)) [MerchantID],
	cast([Name] as varchar(500)) [Name],
	cast([NickName] as varchar(500)) [NickName],
	cast([Email] as nvarchar(320)) [Email],
	cast([Pin] as varchar(128)) [PIN],
	cast([Role] as varchar(100)) [Role] 
From stg.[Mer_Employees_FinalView]
    ');

  CREATE TABLE "dbo"."Mer_Employees_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Mer_Employees_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Mer_Employees_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Mer_Employees_FromStg__dbt_tmp_temp_view"
    end



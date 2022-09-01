
  
  if object_id ('"dbo"."Auct_Reports__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Reports__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Reports__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Reports__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Reports__dbt_tmp_temp_view as
    
Select
	cast([ReportsID] as int) [ReportsID],
	cast([ReportsCategory] as nvarchar(4000)) [ReportsCategory],
	cast([ReportsTitle] as nvarchar(4000)) [ReportsTitle],
	cast([ReportsFileName] as nvarchar(4000)) [ReportsFileName],
	cast([Auctionind] as nvarchar(4000)) [Auctionind],
	cast([Accountind] as nvarchar(4000)) [Accountind],
	cast([Auctiondayind] as nvarchar(4000)) [Auctiondayind],
	cast([Paymentind] as nvarchar(4000)) [Paymentind],
	cast([Value1ind] as nvarchar(4000)) [Value1ind],
	cast([Value2ind] as nvarchar(4000)) [Value2ind],
	cast([Value3ind] as nvarchar(4000)) [Value3ind],
	cast([DateFromind] as nvarchar(4000)) [DateFromind],
	cast([Datetoind] as nvarchar(4000)) [Datetoind],
	cast([Value1Title] as nvarchar(4000)) [Value1Title],
	cast([Value1Example] as nvarchar(4000)) [Value1Example],
	cast([Value2Title] as nvarchar(4000)) [Value2Title],
	cast([Value2Example] as nvarchar(4000)) [Value2Example],
	cast([Value3Title] as nvarchar(4000)) [Value3Title],
	cast([Value3Example] as nvarchar(4000)) [Value3Example],
	cast([DateFromTitle] as nvarchar(4000)) [DateFromTitle],
	cast([DateFromExample] as nvarchar(4000)) [DateFromExample],
	cast([DatetoTitle] as nvarchar(4000)) [DatetoTitle],
	cast([DatetoExample] as nvarchar(4000)) [DatetoExample],
	cast([Description] as nvarchar(4000)) [Description],
	cast([IsexcelExport] as int) [IsexcelExport],
	cast([IsSorTable] as int) [IsSorTable],
	cast([Value4ind] as nvarchar(4000)) [Value4ind],
	cast([Value4Title] as nvarchar(4000)) [Value4Title],
	cast([Value4Example] as nvarchar(4000)) [Value4Example] 
From stg.[Auct_Reports_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Reports__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Reports__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Reports__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Reports__dbt_tmp_temp_view"
    end



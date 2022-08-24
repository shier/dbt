
  
  if object_id ('"dbo"."Auct_NavisionCustomerBuffer__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_NavisionCustomerBuffer__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_NavisionCustomerBuffer__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_NavisionCustomerBuffer__dbt_tmp"
    end


   EXEC('create view dbo.Auct_NavisionCustomerBuffer__dbt_tmp_temp_view as
    
Select
	cast([No] as nvarchar(4000)) [No],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Name2] as nvarchar(4000)) [Name2],
	cast([Address] as nvarchar(4000)) [Address],
	cast([Address2] as nvarchar(4000)) [Address2],
	cast([City] as nvarchar(4000)) [City],
	cast([State] as nvarchar(4000)) [State],
	cast([CountryCode] as nvarchar(4000)) [CountryCode],
	cast([PostCode] as nvarchar(4000)) [PostCode],
	cast([Phoneno] as nvarchar(4000)) [Phoneno],
	cast([Email] as nvarchar(4000)) [Email],
	cast([HomePage] as nvarchar(4000)) [HomePage],
	cast([Status] as int) [Status],
	cast([StatusMessage] as nvarchar(4000)) [StatusMessage],
	cast([WrotetoNavision] as int) [WrotetoNavision] 
From stg.[Auct_NavisionCustomerBuffer_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_NavisionCustomerBuffer__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_NavisionCustomerBuffer__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_NavisionCustomerBuffer__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_NavisionCustomerBuffer__dbt_tmp_temp_view"
    end



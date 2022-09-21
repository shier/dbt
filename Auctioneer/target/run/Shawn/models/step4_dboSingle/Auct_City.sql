
  
  if object_id ('"dbo"."Auct_City__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_City__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_City__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_City__dbt_tmp"
    end


   EXEC('create view dbo.Auct_City__dbt_tmp_temp_view as
    
Select
	cast([CityID] as int) [CITYID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([County] as nvarchar(4000)) [COUNTY],
	cast([State] as nvarchar(4000)) [STATE],
	cast([StateAbbreviation] as nvarchar(4000)) [STATEABBREVIATION],
	cast([PostalCode] as nvarchar(4000)) [POSTALCODE] 
From stg.[Auct_City_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_City__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_City__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_City__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_City__dbt_tmp_temp_view"
    end



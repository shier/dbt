
  
  if object_id ('"dbo"."CC_ZipCodegeoLocation__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_ZipCodegeoLocation__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_ZipCodegeoLocation__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_ZipCodegeoLocation__dbt_tmp"
    end


   EXEC('create view dbo.CC_ZipCodegeoLocation__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [Id],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([ZipCode] as nvarchar(4000)) [ZipCode],
	cast([IsActive] as bit) [IsActive],
	cast([Latitude] as float) [Latitude],
	cast([Longitude] as float) [Longitude] 
From stg.[CC_ZipCodegeoLocation_FinalView]
    ');

  CREATE TABLE "dbo"."CC_ZipCodegeoLocation__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_ZipCodegeoLocation__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_ZipCodegeoLocation__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_ZipCodegeoLocation__dbt_tmp_temp_view"
    end



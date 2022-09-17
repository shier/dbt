
  
  if object_id ('"dbo"."CC_NewsLetterShowcase__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_NewsLetterShowcase__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_NewsLetterShowcase__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_NewsLetterShowcase__dbt_tmp"
    end


   EXEC('create view dbo.CC_NewsLetterShowcase__dbt_tmp_temp_view as
    
Select
	cast([IsActive] as bit) [IsActive],
	cast([NewsLetterissueFK] as int) [NewsLetterissueFK],
	cast([ListingFK] as int) [ListingFK],
	cast([ShowcaseSequence] as int) [ShowcaseSequence],
	cast([CreateDateUTC] as datetime) [CreateDateUTC],
	cast([ModifyDateUTC] as datetime) [ModifyDateUTC] 
From stg.[CC_NewsLetterShowcase_FinalView]
    ');

  CREATE TABLE "dbo"."CC_NewsLetterShowcase__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_NewsLetterShowcase__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_NewsLetterShowcase__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_NewsLetterShowcase__dbt_tmp_temp_view"
    end



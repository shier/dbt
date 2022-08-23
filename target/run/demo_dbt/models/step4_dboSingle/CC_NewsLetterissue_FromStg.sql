
  
  if object_id ('"dbo"."CC_NewsLetterissue_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_NewsLetterissue_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_NewsLetterissue_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_NewsLetterissue_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.CC_NewsLetterissue_FromStg__dbt_tmp_temp_view as
    
Select
	cast([NewsLetterissuePK] as int) [NewsLetterissuePK],
	cast([CreateDateUTC] as datetime) [CreateDateUTC],
	cast([ModifyDateUTC] as datetime) [ModifyDateUTC],
	cast([IssueDateUTC] as datetime) [IssueDateUTC],
	cast([IsActive] as bit) [IsActive] 
From stg.[CC_NewsLetterissue_FinalView]
    ');

  CREATE TABLE "dbo"."CC_NewsLetterissue_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_NewsLetterissue_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_NewsLetterissue_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_NewsLetterissue_FromStg__dbt_tmp_temp_view"
    end




  
  if object_id ('"dbo"."CC_EmailReview__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_EmailReview__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_EmailReview__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_EmailReview__dbt_tmp"
    end


   EXEC('create view dbo.CC_EmailReview__dbt_tmp_temp_view as
    
Select
	cast([ReviewReason] as nvarchar(4000)) [ReviewReason],
	cast([ReviewInFormation] as nvarchar(4000)) [ReviewInFormation],
	cast([SentFrom] as nvarchar(4000)) [SentFrom],
	cast([Replyto] as nvarchar(4000)) [Replyto],
	cast([IpAddress] as nvarchar(4000)) [IpAddress],
	cast([Template] as nvarchar(4000)) [Template],
	cast([ContentFields] as nvarchar(4000)) [ContentFields],
	cast([Meta] as nvarchar(4000)) [Meta],
	cast([ReviewedBy] as nvarchar(4000)) [ReviewedBy],
	cast([ReviewerAction] as nvarchar(4000)) [ReviewerAction],
	cast([IsActive] as bit) [IsActive],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([ID] as int) [ID],
	cast([Source] as int) [Source] 
From stg.[CC_EmailReview_FinalView]
    ');

  CREATE TABLE "dbo"."CC_EmailReview__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_EmailReview__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_EmailReview__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_EmailReview__dbt_tmp_temp_view"
    end



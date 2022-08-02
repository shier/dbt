
  
  if object_id ('"stg"."CC_EmailReview_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_EmailReview_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_EmailReview_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_EmailReview_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_EmailReview_Inter__dbt_tmp_temp_view as
    
Select
	IsActive IsActive,
	Source Source,
	Id ID,
	CreateDate CreateDate,
	ModifyDate ModifyDate,
	cast(SentFrom as nvarchar(4000)) SentFrom,
	cast(ReplyTo as nvarchar(4000)) Replyto,
	cast(IpAddress as nvarchar(4000)) IpAddress,
	cast(Template as nvarchar(4000)) Template,
	cast(ContentFields as nvarchar(4000)) ContentFields,
	cast(Meta as nvarchar(4000)) Meta,
	cast(ReviewedBy as nvarchar(4000)) ReviewedBy,
	cast(ReviewerAction as nvarchar(4000)) ReviewerAction,
	cast(ReviewReason as nvarchar(4000)) ReviewReason,
	cast(ReviewInformation as nvarchar(4000)) ReviewInFormation
From CC_EmailReview_Raw
    ');

  CREATE TABLE "stg"."CC_EmailReview_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_EmailReview_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_EmailReview_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_EmailReview_Inter__dbt_tmp_temp_view"
    end




  
  if object_id ('"dbo"."CC_Order__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_Order__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_Order__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_Order__dbt_tmp"
    end


   EXEC('create view dbo.CC_Order__dbt_tmp_temp_view as
    
Select
	cast([IsActive] as bit) [IsActive],
	cast([ID] as int) [ID],
	cast([UserID] as int) [UserID],
	cast([PaymentID] as int) [PaymentID],
	cast([CreateDate] as datetime) [Created_Order],
	cast([ModifyDate] as datetime) [ModifiedDate_Order] 
From stg.[CC_Order_FinalView]
    ');

  CREATE TABLE "dbo"."CC_Order__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_Order__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_Order__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_Order__dbt_tmp_temp_view"
    end



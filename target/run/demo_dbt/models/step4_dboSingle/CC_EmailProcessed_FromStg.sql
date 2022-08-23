
  
  if object_id ('"dbo"."CC_EmailProcessed_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_EmailProcessed_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_EmailProcessed_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_EmailProcessed_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.CC_EmailProcessed_FromStg__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [ID],
	cast([ResponseCode] as int) [ResponseCode],
	cast([ForeignID] as int) [ForeignID],
	cast([DateSent] as datetime) [DateSent],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([IsActive] as bit) [IsActive],
	cast([SentFrom] as nvarchar(4000)) [SentFrom],
	cast([Replyto] as nvarchar(4000)) [Replyto],
	cast([IpAddress] as nvarchar(4000)) [IpAddress],
	cast([Template] as nvarchar(4000)) [Template],
	cast([Fields] as nvarchar(4000)) [Fields],
	cast([Meta] as nvarchar(4000)) [Meta],
	cast([Response] as nvarchar(4000)) [Response],
	cast([MandrillID] as nvarchar(4000)) [MandrillID],
	cast([MandrillrejectReason] as nvarchar(4000)) [MandrillrejectReason],
	cast([SuBJect] as nvarchar(4000)) [SuBJect] 
From stg.[CC_EmailProcessed_FinalView]
    ');

  CREATE TABLE "dbo"."CC_EmailProcessed_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_EmailProcessed_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_EmailProcessed_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_EmailProcessed_FromStg__dbt_tmp_temp_view"
    end



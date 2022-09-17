
  
  if object_id ('"dbo"."CC_SEndtofriend__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_SEndtofriend__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_SEndtofriend__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_SEndtofriend__dbt_tmp"
    end


   EXEC('create view dbo.CC_SEndtofriend__dbt_tmp_temp_view as
    
Select
	cast([IpAddress] as nvarchar(4000)) [IpAddress],
	cast([Message] as nvarchar(4000)) [Message],
	cast([Browser] as nvarchar(4000)) [Browser],
	cast([UserAgent] as nvarchar(4000)) [UserAgent],
	cast([SEnderName] as nvarchar(4000)) [SenderName],
	cast([SEnderEmail] as nvarchar(4000)) [SenderEmail],
	cast([ReceiverName] as nvarchar(4000)) [ReceiverName],
	cast([ReceiverEmail] as nvarchar(4000)) [ReceiverEmail],
	cast([IsActive] as bit) [IsActive],
	cast([SEnderwantsCopy] as bit) [SenderWantsCopy],
	cast([WantsNewsLetter] as bit) [WantsNewsletter],
	cast([WantsrrcInfo] as bit) [WantsRrcInfo],
	cast([EmailProcessed] as bit) [EmailProcessed],
	cast([CopyProcessed] as bit) [CopyProcessed],
	cast([ID] as int) [Id],
	cast([ListingID] as int) [ListingId],
	cast([EmailFilterCodeID] as int) [EmailFilterCodeId],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate] 
From stg.[CC_SEndtofriend_FinalView]
    ');

  CREATE TABLE "dbo"."CC_SEndtofriend__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_SEndtofriend__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_SEndtofriend__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_SEndtofriend__dbt_tmp_temp_view"
    end



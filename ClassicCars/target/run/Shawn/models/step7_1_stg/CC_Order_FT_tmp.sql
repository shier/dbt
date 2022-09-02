
  
  if object_id ('"stg"."CC_Order_FT_tmp__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_Order_FT_tmp__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_Order_FT_tmp__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_Order_FT_tmp__dbt_tmp"
    end


   EXEC('create view stg.CC_Order_FT_tmp__dbt_tmp_temp_view as
    

WITH CC_Order_CTE AS (
    SELECT
        orderstg.[ID] AS [OrderID], 
        orderstg.[IsActive], 
        orderstg.[UserID], 
        seller.[Seller_Skey], 
        -- orderstg.[PaymentID], 
        pymt.[PaymentID], 
        orderstg.[CreateDate] AS [Created], 
        orderstg.[ModifyDate] AS [ModifiedDate]
    FROM [stg].[CC_Order_FinalView] orderstg
    -- FOR [PaymentID]
    LEFT JOIN [stg].[CC_PaymentMerged_FT_stg] pymt
        ON orderstg.[PaymentID]=pymt.[NewPaymentID]
    -- FOR [Seller_Skey]
    LEFT JOIN [stg].[CC_PaymentNew_FinalView] pymtnew
        ON orderstg.[PaymentID]=pymtnew.[Id]
    LEFT JOIN [stg].[CC_User_FinalView] users
        ON pymtnew.[UserId]=users.[Id]
    LEFT JOIN [dbo].[CC_Seller_DM] seller 
        ON users.[CompanyId]=seller.[Seller_Skey]
    -- LEFT JOIN [stg].[CC_Company_FinalView] co 
    --     ON users.[CompanyId]=co.[Id]  

    -- -- FOR [Customer_Skey]
    -- LEFT JOIN [test].[CC_Customer_Archive_DM] cxarchive
    --     ON orderstg.[UserID]=cxarchive.[UserID]
    -- WHERE [IsCurrent]=1
    -- WHERE orderstg.[CreateDate]>=cxarchive.[Created] AND orderstg.[ModifyDate]>=cxarchive.[ModifiedDate] 
    -- WHERE orderstg.[CreateDate] BETWEEN cxarchive.[Created] AND cxarchive.[ModifiedDate]
)
SELECT
    [OrderID], 
	[IsActive], 
    [UserID], 
    [Seller_Skey], 
    [PaymentID], 
    [Created], 
	[ModifiedDate]
FROM CC_Order_CTE
    ');

  CREATE TABLE "stg"."CC_Order_FT_tmp__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_Order_FT_tmp__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_Order_FT_tmp__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_Order_FT_tmp__dbt_tmp_temp_view"
    end



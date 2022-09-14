
  
  if object_id ('"dbo"."Auct_Customer_Archive_BR__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Customer_Archive_BR__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Customer_Archive_BR__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Customer_Archive_BR__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Customer_Archive_BR__dbt_tmp_temp_view as
    

SELECT 
    HASHBYTES(''SHA2_256'', 
        CONCAT(
            COALESCE(CAST([CustomerAccountID] AS VARCHAR(20)), ''''), ''|'', 
            COALESCE(CAST([AddressID] AS VARCHAR(20)), ''''), ''|'', 
            COALESCE(CAST([RowNumber] AS VARCHAR(20)), '''')
        )
    ) AS [ArchivedCustomer_Skey],
    [CustomerAccountID],
    [CurrentCompanyID],
    [PresumedCustomerType],
    [ContactID],
    [Name],
    [Email],
    [Email_Cleaned],

    [IsActiveEmail],
    [EmailBlastOptIn],
    -- [PhoneID],
    -- [PhoneNumber],
    -- [PhoneType],
    -- [PhoneStatus],
    -- [IsDefaultPhone],
    -- [IsActivePhone],
    [MobilePhone_PhoneID], 
    [MobilePhone_PhoneNumber], 
    [MobilePhone_PhoneStatus], 
    [IsDefaultMobilePhone], 
    [IsActiveMobilePhone], 
    [DirectPhone_PhoneID], 
    [DirectPhone_PhoneNumber], 
    [DirectPhone_PhoneStatus],
    [IsDefaultDirectPhone],  
    [IsActiveDirectPhone],  
    [HomePhone_PhoneID],
    [HomePhone_PhoneNumber], 
    [HomePhone_PhoneStatus],  
    [IsDefaultHomePhone],  
    [IsActiveHomePhone],  
    [HomeFax_PhoneID],  
    [HomeFax_PhoneNumber], 
    [HomeFax_PhoneStatus],  
    [IsDefaultHomeFax],  
    [IsActiveHomeFax],  
    [DealerMobile_PhoneID],  
    [DealerMobile_PhoneNumber], 
    [DealerMobile_PhoneStatus],  
    [IsDefaultDealerMobile],  
    [IsActiveDealerMobile],  
    [DealerPhone_PhoneID],  
    [DealerPhone_PhoneNumber], 
    [DealerPhone_PhoneStatus],  
    [IsDefaultDealerPhone],  
    [IsActiveDealerPhone],  
    [DealerFax_PhoneID],  
    [DealerFax_PhoneNumber], 
    [DealerFax_PhoneStatus],  
    [IsDefaultDealerFax],  
    [IsActiveDealerFax],  
    [BusinessPhone_PhoneID],  
    [BusinessPhone_PhoneNumber], 
    [BusinessPhone_PhoneStatus],  
    [IsDefaultBusinessPhone],  
    [IsActiveBusinessPhone],  
    [BusinessFax_PhoneID],  
    [BusinessFax_PhoneNumber], 
    [BusinessFax_PhoneStatus],  
    [IsDefaultBusinessFax],  
    [IsActiveBusinessFax],  
    [BusinessMobile_PhoneID],  
    [BusinessMobile_PhoneNumber], 
    [BusinessMobile_PhoneStatus],  
    [IsDefaultBusinessMobile],  
    [IsActiveBusinessMobile], 
    [VendorPhone_PhoneID],  
    [VendorPhone_PhoneNumber], 
    [VendorPhone_PhoneStatus],  
    [IsDefaultVendorPhone],      
    [IsActiveVendorPhone],  
    [VendorFax_PhoneID],  
    [VendorFax_PhoneNumber], 
    [VendorFax_PhoneStatus],  
    [IsDefaultVendorFax],  
    [IsActiveVendorFax],  
    [RequestNumber_PhoneID],  
    [RequestNumber_PhoneNumber], 
    [RequestNumber_PhoneStatus],  
    [IsDefaultRequestNumber],  
    [IsActiveRequestNumber],  
    [RequestFax_PhoneID],  
    [RequestFax_PhoneNumber],
    [RequestFax_PhoneStatus],
    [IsDefaultRequestFax],
    [IsActiveRequestFax],
    [LocalPhone_PhoneID],
    [LocalPhone_PhoneNumber],
    [LocalPhone_PhoneStatus], 
    [IsDefaultLocalPhone],
    [IsActiveLocalPhone], 
    [Pager_PhoneID],
    [Pager_PhoneNumber], 
    [Pager_PhoneStatus],  
    [IsDefaultPager],
    [IsActivePager],
    [UnknownPhoneType_PhoneID],
    [UnknownPhoneType_PhoneNumber], 
    [UnknownPhoneType_PhoneStatus],  
    [IsDefaultUnknownPhoneType],
    [IsActiveUnknownPhoneType],
    [AddressID],
    [HomeAddress], 
    [BusinessAddress], 
    [LocalAddress], 
    [DealerAddress], 
    [MailingAddress],
    [City],
    [State],
    [ZipCode],
    [Country],
    [AddressStatus],
    [IsDefaultAddress],
    [IsActiveAddress],
    [HasDealerInfo],
    [EffectiveStartDate],
    [EffectiveEndDate],
    [IsCurrent]
FROM stg.[Auct_Customer_Archive_BR_Step5]
    ');

  CREATE TABLE "dbo"."Auct_Customer_Archive_BR__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Customer_Archive_BR__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Customer_Archive_BR__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Customer_Archive_BR__dbt_tmp_temp_view"
    end



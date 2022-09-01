
  
  if object_id ('"stg"."Auct_CA_Temp2__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_CA_Temp2__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_CA_Temp2__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_CA_Temp2__dbt_tmp"
    end


   EXEC('create view stg.Auct_CA_Temp2__dbt_tmp_temp_view as
    
SELECT 
            [CustomerAccountID],
            [CurrentCompanyID],
            [PresumedCustomerType],
            [ContactID],
            [Name],
            [EmailAddress],
            [IsActiveEmail],
            [EmailBlastOptIn],
            -- [PhoneID],
            -- [PhoneNumber],
            -- [PhoneType],
            -- [PhoneStatus],
            -- [IsDefaultPhone],
            -- [IsActivePhone],
            MIN([mobilephone_PhoneID]) AS [MobilePhone_PhoneID], 
            MIN([mobilephone_PhoneNumber]) AS [MobilePhone_PhoneNumber], 
            MIN([mobilephone_PhoneStatus]) AS [MobilePhone_PhoneStatus], 
            CAST(MIN([IsDefaultMobilephone]+0) AS BIT) AS [IsDefaultMobilePhone], 
            CAST(MIN([IsActiveMobilephone]+0) AS BIT) AS [IsActiveMobilePhone], 
            MIN([directphone_PhoneID]) AS [DirectPhone_PhoneID], 
            MIN([directphone_PhoneNumber]) AS [DirectPhone_PhoneNumber], 
            MIN([directphone_PhoneStatus]) AS [DirectPhone_PhoneStatus],
            CAST(MIN([IsDefaultDirectphone]+0) AS BIT) AS [IsDefaultDirectPhone],  
            CAST(MIN([IsActiveDirectphone]+0) AS BIT) AS [IsActiveDirectPhone],  
            MIN([homephone_PhoneID]) AS [HomePhone_PhoneID],
            MIN([homephone_PhoneNumber]) AS [HomePhone_PhoneNumber], 
            MIN([homephone_PhoneStatus]) AS [HomePhone_PhoneStatus],  
            CAST(MIN([IsDefaultHomephone]+0) AS BIT) AS [IsDefaultHomePhone],  
            CAST(MIN([IsActiveHomephone]+0) AS BIT) AS [IsActiveHomePhone],  
            MIN([homefax_PhoneID]) AS [HomeFax_PhoneID],  
            MIN([homefax_PhoneNumber]) AS [HomeFax_PhoneNumber], 
            MIN([homefax_PhoneStatus]) AS [HomeFax_PhoneStatus],  
            CAST(MIN([IsDefaultHomefax]+0) AS BIT) AS [IsDefaultHomeFax],  
            CAST(MIN([IsActiveHomefax]+0) AS BIT) AS [IsActiveHomeFax],  
            MIN([dealermobile_PhoneID]) AS [DealerMobile_PhoneID],  
            MIN([dealermobile_PhoneNumber]) AS [DealerMobile_PhoneNumber], 
            MIN([dealermobile_PhoneStatus]) AS [DealerMobile_PhoneStatus],  
            CAST(MIN([IsDefaultDealermobile]+0) AS BIT) AS [IsDefaultDealerMobile],  
            CAST(MIN([IsActiveDealermobile]+0) AS BIT) AS [IsActiveDealerMobile],  
            MIN([dealerphone_PhoneID]) AS [DealerPhone_PhoneID],  
            MIN([dealerphone_PhoneNumber]) AS [DealerPhone_PhoneNumber], 
            MIN([dealerphone_PhoneStatus]) AS [DealerPhone_PhoneStatus],  
            CAST(MIN([IsDefaultDealerphone]+0) AS BIT) AS [IsDefaultDealerPhone],  
            CAST(MIN([IsActiveDealerphone]+0) AS BIT) AS [IsActiveDealerPhone],  
            MIN([dealerfax_PhoneID]) AS [DealerFax_PhoneID],  
            MIN([dealerfax_PhoneNumber]) AS [DealerFax_PhoneNumber], 
            MIN([dealerfax_PhoneStatus]) AS [DealerFax_PhoneStatus],  
            CAST(MIN([IsDefaultDealerfax]+0) AS BIT) AS [IsDefaultDealerFax],  
            CAST(MIN([IsActiveDealerfax]+0) AS BIT) AS [IsActiveDealerFax],  
            MIN([businessphone_PhoneID]) AS [BusinessPhone_PhoneID],  
            MIN([businessphone_PhoneNumber]) AS [BusinessPhone_PhoneNumber], 
            MIN([businessphone_PhoneStatus]) AS [BusinessPhone_PhoneStatus],  
            CAST(MIN([IsDefaultBusinessphone]+0) AS BIT) AS [IsDefaultBusinessPhone],  
            CAST(MIN([IsActiveBusinessphone]+0) AS BIT) AS [IsActiveBusinessPhone],  
            MIN([businessfax_PhoneID]) AS [BusinessFax_PhoneID],  
            MIN([businessfax_PhoneNumber]) AS [BusinessFax_PhoneNumber], 
            MIN([businessfax_PhoneStatus]) AS [BusinessFax_PhoneStatus],  
            CAST(MIN([IsDefaultBusinessfax]+0) AS BIT) AS [IsDefaultBusinessFax],  
            CAST(MIN([IsActiveBusinessfax]+0) AS BIT) AS [IsActiveBusinessFax],  
            MIN([businessmobile_PhoneID]) AS [BusinessMobile_PhoneID],  
            MIN([businessmobile_PhoneNumber]) AS [BusinessMobile_PhoneNumber], 
            MIN([businessmobile_PhoneStatus]) AS [BusinessMobile_PhoneStatus],  
            CAST(MIN([IsDefaultBusinessMobile]+0) AS BIT) AS [IsDefaultBusinessMobile],  
            CAST(MIN([IsActiveBusinessmobile]+0) AS BIT) AS [IsActiveBusinessMobile], 
            MIN([vendorphone_PhoneID]) AS [VendorPhone_PhoneID],  
            MIN([vendorphone_PhoneNumber]) AS [VendorPhone_PhoneNumber], 
            MIN([vendorphone_PhoneStatus]) AS [VendorPhone_PhoneStatus],  
            CAST(MIN([IsDefaultVendorphone]+0) AS BIT) AS [IsDefaultVendorPhone],      
            CAST(MIN([IsActiveVendorphone]+0) AS BIT) AS [IsActiveVendorPhone],  
            MIN([vendorfax_PhoneID]) AS [VendorFax_PhoneID],  
            MIN([vendorfax_PhoneNumber]) AS [VendorFax_PhoneNumber], 
            MIN([vendorfax_PhoneStatus]) AS [VendorFax_PhoneStatus],  
            CAST(MIN([IsDefaultVendorfax]+0) AS BIT) AS [IsDefaultVendorFax],  
            CAST(MIN([IsActiveVendorfax]+0) AS BIT) AS [IsActiveVendorFax],  
            MIN([RequestNumber_PhoneID]) AS [RequestNumber_PhoneID],  
            MIN([RequestNumber_PhoneNumber]) AS [RequestNumber_PhoneNumber], 
            MIN([RequestNumber_PhoneStatus]) AS [RequestNumber_PhoneStatus],  
            CAST(MIN([IsDefaultRequestNumber]+0) AS BIT) AS [IsDefaultRequestNumber],  
            CAST(MIN([IsActiveRequestNumber]+0) AS BIT) AS [IsActiveRequestNumber],  
            MIN([requestfax_PhoneID]) AS [RequestFax_PhoneID],  
            MIN([requestfax_PhoneNumber]) AS [RequestFax_PhoneNumber],
            MIN([requestfax_PhoneStatus]) AS [RequestFax_PhoneStatus],
            CAST(MIN([IsDefaultRequestfax]+0) AS BIT) AS [IsDefaultRequestFax],
            CAST(MIN([IsActiveRequestfax]+0) AS BIT) AS [IsActiveRequestFax],
            MIN([localphone_PhoneID]) AS [LocalPhone_PhoneID],
            MIN([localphone_PhoneNumber]) AS [LocalPhone_PhoneNumber],
            MIN([localphone_PhoneStatus]) AS [LocalPhone_PhoneStatus], 
            CAST(MIN([IsDefaultLocalphone]+0) AS BIT) AS [IsDefaultLocalPhone],
            CAST(MIN([IsActiveLocalphone]+0) AS BIT) AS [IsActiveLocalPhone], 
            MIN([pager_PhoneID]) AS [Pager_PhoneID],
            MIN([pager_PhoneNumber]) AS [Pager_PhoneNumber], 
            MIN([pager_PhoneStatus]) AS [Pager_PhoneStatus],  
            CAST(MIN([IsDefaultPager]+0) AS BIT) AS [IsDefaultPager],
            CAST(MIN([IsActivePager]+0) AS BIT) AS [IsActivePager],
            MIN([UnknownPhoneType_PhoneID]) AS [UnknownPhoneType_PhoneID],
            MIN([UnknownPhoneType_PhoneNumber]) AS [UnknownPhoneType_PhoneNumber], 
            MIN([UnknownPhoneType_PhoneStatus]) AS [UnknownPhoneType_PhoneStatus],  
            CAST(MIN([IsDefaultUnknownPhoneType]+0) AS BIT) AS [IsDefaultUnknownPhoneType],
            CAST(MIN([IsActiveUnknownPhoneType]+0) AS BIT) AS [IsActiveUnknownPhoneType],
            [AddressID],
            -- [AddressType],
            -- [Address],
            [HomeAddress], 
            [BusinessAddress], 
            [LocalAddress], 
            [DealerAddress], 
            [MailingAddress],
            [City],
            [State],
            [PostalCode],
            [Country],
            [AddressStatus],
            [IsDefaultAddress],
            [IsActiveAddress],
            [EffectiveStartDate],
            [EffectiveEndDate],
            ROW_NUMBER() OVER(
                PARTITION BY [CustomerAccountID], [AddressID]
                ORDER BY [EffectiveStartDate] DESC
            ) AS [RowNumber]
FROM dbo.Auct_CA_Temp1
GROUP BY [CustomerAccountID], [CurrentCompanyID], [PresumedCustomerType], [ContactID], [Name], [EmailAddress], [IsActiveEmail], [EmailBlastOptIn], [AddressID], [HomeAddress], [BusinessAddress], [LocalAddress], [DealerAddress], [MailingAddress], [City], [State], [PostalCode], [Country], [AddressStatus], [IsDefaultAddress], [IsActiveAddress], [EffectiveStartDate], [EffectiveEndDate]
    ');

  CREATE TABLE "stg"."Auct_CA_Temp2__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_CA_Temp2__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_CA_Temp2__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_CA_Temp2__dbt_tmp_temp_view"
    end



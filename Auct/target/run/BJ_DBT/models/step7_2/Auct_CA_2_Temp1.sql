
  
  if object_id ('"stg"."Auct_CA_2_Temp1__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_CA_2_Temp1__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_CA_2_Temp1__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_CA_2_Temp1__dbt_tmp"
    end


   EXEC('create view stg.Auct_CA_2_Temp1__dbt_tmp_temp_view as
    

SELECT 
                cxstg1.[CustomerAccountID],
                cxstg1.[CurrentCompanyID],
                CASE     
                    WHEN histcompidstg.[CompanyID] IS NOT NULL 
                        THEN ''Corporate Customer''
                    ELSE ''Retail Customer''
                END AS [PresumedCustomerType],
                COALESCE(conmrg.[ContactID], cxstg1.[ContactID]) AS [ContactID],
                conmrg.[Name],
                cxstg1.[EmailAddress],
                cxstg1.[IsActiveEmail],
                cxstg1.[EmailBlastOptIn],
                -- cxstg1.[PhoneID],
                -- cxstg1.[PhoneNumber],
                -- cxstg1.[PhoneType],
                -- cxstg1.[PhoneStatus],
                -- cxstg1.[IsDefaultPhone],
                -- cxstg1.[IsActivePhone],
                cxstg1.[MobilePhone_PhoneID], 
                cxstg1.[MobilePhone_PhoneNumber], 
                cxstg1.[MobilePhone_PhoneStatus], 
                cxstg1.[IsDefaultMobilePhone], 
                cxstg1.[IsActiveMobilePhone], 
                cxstg1.[DirectPhone_PhoneID], 
                cxstg1.[DirectPhone_PhoneNumber], 
                cxstg1.[DirectPhone_PhoneStatus],
                cxstg1.[IsDefaultDirectPhone],  
                cxstg1.[IsActiveDirectPhone],  
                cxstg1.[HomePhone_PhoneID],
                cxstg1.[HomePhone_PhoneNumber], 
                cxstg1.[HomePhone_PhoneStatus],  
                cxstg1.[IsDefaultHomePhone],  
                cxstg1.[IsActiveHomePhone],  
                cxstg1.[HomeFax_PhoneID],  
                cxstg1.[HomeFax_PhoneNumber], 
                cxstg1.[HomeFax_PhoneStatus],  
                cxstg1.[IsDefaultHomeFax],  
                cxstg1.[IsActiveHomeFax],  
                cxstg1.[DealerMobile_PhoneID],  
                cxstg1.[DealerMobile_PhoneNumber], 
                cxstg1.[DealerMobile_PhoneStatus],  
                cxstg1.[IsDefaultDealerMobile],  
                cxstg1.[IsActiveDealerMobile],  
                cxstg1.[DealerPhone_PhoneID],  
                cxstg1.[DealerPhone_PhoneNumber], 
                cxstg1.[DealerPhone_PhoneStatus],  
                cxstg1.[IsDefaultDealerPhone],  
                cxstg1.[IsActiveDealerPhone],  
                cxstg1.[DealerFax_PhoneID],  
                cxstg1.[DealerFax_PhoneNumber], 
                cxstg1.[DealerFax_PhoneStatus],  
                cxstg1.[IsDefaultDealerFax],  
                cxstg1.[IsActiveDealerFax],  
                cxstg1.[BusinessPhone_PhoneID],  
                cxstg1.[BusinessPhone_PhoneNumber], 
                cxstg1.[BusinessPhone_PhoneStatus],  
                cxstg1.[IsDefaultBusinessPhone],  
                cxstg1.[IsActiveBusinessPhone],  
                cxstg1.[BusinessFax_PhoneID],  
                cxstg1.[BusinessFax_PhoneNumber], 
                cxstg1.[BusinessFax_PhoneStatus],  
                cxstg1.[IsDefaultBusinessFax],  
                cxstg1.[IsActiveBusinessFax],  
                cxstg1.[BusinessMobile_PhoneID],  
                cxstg1.[BusinessMobile_PhoneNumber], 
                cxstg1.[BusinessMobile_PhoneStatus],  
                cxstg1.[IsDefaultBusinessMobile],  
                cxstg1.[IsActiveBusinessMobile], 
                cxstg1.[VendorPhone_PhoneID],  
                cxstg1.[VendorPhone_PhoneNumber], 
                cxstg1.[VendorPhone_PhoneStatus],  
                cxstg1.[IsDefaultVendorPhone],      
                cxstg1.[IsActiveVendorPhone],  
                cxstg1.[VendorFax_PhoneID],  
                cxstg1.[VendorFax_PhoneNumber], 
                cxstg1.[VendorFax_PhoneStatus],  
                cxstg1.[IsDefaultVendorFax],  
                cxstg1.[IsActiveVendorFax],  
                cxstg1.[RequestNumber_PhoneID],  
                cxstg1.[RequestNumber_PhoneNumber], 
                cxstg1.[RequestNumber_PhoneStatus],  
                cxstg1.[IsDefaultRequestNumber],  
                cxstg1.[IsActiveRequestNumber],  
                cxstg1.[RequestFax_PhoneID],  
                cxstg1.[RequestFax_PhoneNumber],
                cxstg1.[RequestFax_PhoneStatus],
                cxstg1.[IsDefaultRequestFax],
                cxstg1.[IsActiveRequestFax],
                cxstg1.[LocalPhone_PhoneID],
                cxstg1.[LocalPhone_PhoneNumber],
                cxstg1.[LocalPhone_PhoneStatus], 
                cxstg1.[IsDefaultLocalPhone],
                cxstg1.[IsActiveLocalPhone], 
                cxstg1.[Pager_PhoneID],
                cxstg1.[Pager_PhoneNumber], 
                cxstg1.[Pager_PhoneStatus],  
                cxstg1.[IsDefaultPager],
                cxstg1.[IsActivePager],
                cxstg1.[UnknownPhoneType_PhoneID],
                cxstg1.[UnknownPhoneType_PhoneNumber], 
                cxstg1.[UnknownPhoneType_PhoneStatus],  
                cxstg1.[IsDefaultUnknownPhoneType],
                cxstg1.[IsActiveUnknownPhoneType],
                cxstg1.[AddressID],
                -- [AddressType],
                -- [Address],
                cxstg1.[HomeAddress], 
                cxstg1.[BusinessAddress], 
                cxstg1.[LocalAddress], 
                cxstg1.[DealerAddress], 
                cxstg1.[MailingAddress],
                cxstg1.[City],
                cxstg1.[State],
                cxstg1.[PostalCode],
                cxstg1.[Country],
                cxstg1.[AddressStatus],
                cxstg1.[IsDefaultAddress],
                cxstg1.[IsActiveAddress],
                cxstg1.[EffectiveStartDate],
                cxstg1.[EffectiveEndDate]
            FROM stg.[Auct_Customer_CTE1] cxstg1
            LEFT JOIN [stg].[Auct_Customer_HistoricalCompanyID_Lookup] histcompidstg
                ON cxstg1.[CustomerAccountID]=histcompidstg.[CustomerAccountID]
            LEFT JOIN [stg].[Auct_Contact_Merge] conmrg
                ON cxstg1.[CustomerAccountID]=conmrg.[CustomerAccountID]
                    -- AND cxstg1.[ContactID]=conmrg.[ContactID] -- WRONG! E.x. [CustomerAccountID] IN (28827)
    ');

  CREATE TABLE "stg"."Auct_CA_2_Temp1__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_CA_2_Temp1__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_CA_2_Temp1__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_CA_2_Temp1__dbt_tmp_temp_view"
    end



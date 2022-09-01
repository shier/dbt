
  
  if object_id ('"stg"."Auct_CA_CheckPhones__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_CA_CheckPhones__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_CA_CheckPhones__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_CA_CheckPhones__dbt_tmp"
    end


   EXEC('create view stg.Auct_CA_CheckPhones__dbt_tmp_temp_view as
    

    SELECT 
        phmrg.[CustomerAccountID],
        phmrg.[MobilePhone_PhoneID], 
        phmrg.[MobilePhone_PhoneNumber], 
        phmrg.[MobilePhone_PhoneStatus], 
        phmrg.[IsDefaultMobilePhone], 
        phmrg.[IsActiveMobilePhone], 
        phmrg.[DirectPhone_PhoneID], 
        phmrg.[DirectPhone_PhoneNumber], 
        phmrg.[DirectPhone_PhoneStatus],
        phmrg.[IsDefaultDirectPhone],  
        phmrg.[IsActiveDirectPhone],  
        phmrg.[HomePhone_PhoneID],
        phmrg.[HomePhone_PhoneNumber], 
        phmrg.[HomePhone_PhoneStatus],  
        phmrg.[IsDefaultHomePhone],  
        phmrg.[IsActiveHomePhone],  
        phmrg.[HomeFax_PhoneID],  
        phmrg.[HomeFax_PhoneNumber], 
        phmrg.[HomeFax_PhoneStatus],  
        phmrg.[IsDefaultHomeFax],  
        phmrg.[IsActiveHomeFax],  
        phmrg.[DealerMobile_PhoneID],  
        phmrg.[DealerMobile_PhoneNumber], 
        phmrg.[DealerMobile_PhoneStatus],  
        phmrg.[IsDefaultDealerMobile],  
        phmrg.[IsActiveDealerMobile],  
        phmrg.[DealerPhone_PhoneID],  
        phmrg.[DealerPhone_PhoneNumber], 
        phmrg.[DealerPhone_PhoneStatus],  
        phmrg.[IsDefaultDealerPhone],  
        phmrg.[IsActiveDealerPhone],  
        phmrg.[DealerFax_PhoneID],  
        phmrg.[DealerFax_PhoneNumber], 
        phmrg.[DealerFax_PhoneStatus],  
        phmrg.[IsDefaultDealerFax],  
        phmrg.[IsActiveDealerFax],  
        phmrg.[BusinessPhone_PhoneID],  
        phmrg.[BusinessPhone_PhoneNumber], 
        phmrg.[BusinessPhone_PhoneStatus],  
        phmrg.[IsDefaultBusinessPhone],  
        phmrg.[IsActiveBusinessPhone],  
        phmrg.[BusinessFax_PhoneID],  
        phmrg.[BusinessFax_PhoneNumber], 
        phmrg.[BusinessFax_PhoneStatus],  
        phmrg.[IsDefaultBusinessFax],  
        phmrg.[IsActiveBusinessFax],  
        phmrg.[BusinessMobile_PhoneID],  
        phmrg.[BusinessMobile_PhoneNumber], 
        phmrg.[BusinessMobile_PhoneStatus],  
        phmrg.[IsDefaultBusinessMobile],  
        phmrg.[IsActiveBusinessMobile], 
        phmrg.[VendorPhone_PhoneID],  
        phmrg.[VendorPhone_PhoneNumber], 
        phmrg.[VendorPhone_PhoneStatus],  
        phmrg.[IsDefaultVendorPhone],      
        phmrg.[IsActiveVendorPhone],  
        phmrg.[VendorFax_PhoneID],  
        phmrg.[VendorFax_PhoneNumber], 
        phmrg.[VendorFax_PhoneStatus],  
        phmrg.[IsDefaultVendorFax],  
        phmrg.[IsActiveVendorFax],  
        phmrg.[RequestNumber_PhoneID],  
        phmrg.[RequestNumber_PhoneNumber], 
        phmrg.[RequestNumber_PhoneStatus],  
        phmrg.[IsDefaultRequestNumber],  
        phmrg.[IsActiveRequestNumber],  
        phmrg.[RequestFax_PhoneID],  
        phmrg.[RequestFax_PhoneNumber],
        phmrg.[RequestFax_PhoneStatus],
        phmrg.[IsDefaultRequestFax],
        phmrg.[IsActiveRequestFax],
        phmrg.[LocalPhone_PhoneID],
        phmrg.[LocalPhone_PhoneNumber],
        phmrg.[LocalPhone_PhoneStatus], 
        phmrg.[IsDefaultLocalPhone],
        phmrg.[IsActiveLocalPhone], 
        phmrg.[Pager_PhoneID],
        phmrg.[Pager_PhoneNumber], 
        phmrg.[Pager_PhoneStatus],  
        phmrg.[IsDefaultPager],
        phmrg.[IsActivePager],
        phmrg.[UnknownPhoneType_PhoneID],
        phmrg.[UnknownPhoneType_PhoneNumber], 
        phmrg.[UnknownPhoneType_PhoneStatus],  
        phmrg.[IsDefaultUnknownPhoneType],
        phmrg.[IsActiveUnknownPhoneType],
       
        vdrstg.[EffectiveStartDate],
        vdrstg.[EffectiveEndDate]
        -- emailmrg.[IsCurrent] AS [IsCurrentEmail],
        -- phmrg.[IsCurrent] AS [IsCurrentPhone],
        -- addrmrg.[IsCurrent] AS [IsCurrentAddress], 
    FROM  stg.[Auct_CA_ValidDateRanges] vdrstg 
       
    LEFT JOIN [stg].[Auct_Phone_Merge] phmrg
        ON vdrstg.[CustomerAccountID]=phmrg.[CustomerAccountID]
            AND phmrg.[EffectiveEndDate]>vdrstg.[EffectiveStartDate]
            AND  phmrg.[EffectiveStartDate]<vdrstg.[EffectiveEndDate] 
    WHERE COALESCE( phmrg.[MobilePhone_PhoneNumber], phmrg.[DirectPhone_PhoneNumber], phmrg.[HomePhone_PhoneNumber], 
    phmrg.[HomeFax_PhoneNumber], phmrg.[DealerMobile_PhoneNumber], phmrg.[DealerPhone_PhoneNumber],
     phmrg.[DealerFax_PhoneNumber], phmrg.[BusinessPhone_PhoneNumber], phmrg.[BusinessFax_PhoneNumber], 
     phmrg.[BusinessMobile_PhoneNumber], phmrg.[VendorPhone_PhoneNumber], phmrg.[VendorFax_PhoneNumber], 
     phmrg.[RequestNumber_PhoneNumber], phmrg.[RequestFax_PhoneNumber], phmrg.[LocalPhone_PhoneNumber],
      phmrg.[Pager_PhoneNumber], phmrg.[UnknownPhoneType_PhoneNumber]
      ) IS NOT NULL


    -- phmrg.[MobilePhone_PhoneNumber] is not null or
    --     phmrg.[DirectPhone_PhoneNumber] is not null or
    --     phmrg.[HomePhone_PhoneNumber] is not null or
    --     phmrg.[HomeFax_PhoneNumber] is not null or
    --     phmrg.[DealerMobile_PhoneNumber] is not null or
    --     phmrg.[DealerPhone_PhoneNumber] is not null or
    --     phmrg.[DealerFax_PhoneNumber] is not null or
    --     phmrg.[BusinessPhone_PhoneNumber] is not null or
    --     phmrg.[BusinessFax_PhoneNumber] is not null or
    --     phmrg.[BusinessMobile_PhoneNumber] is not null or
    --     phmrg.[VendorPhone_PhoneNumber] is not null or
    --     phmrg.[VendorFax_PhoneNumber] is not null or
    --     phmrg.[RequestNumber_PhoneNumber] is not null or
    --     phmrg.[RequestFax_PhoneNumber] is not null or
    --     phmrg.[LocalPhone_PhoneNumber] is not null or
    --     phmrg.[Pager_PhoneNumber] is not null or
    --     phmrg.[UnknownPhoneType_PhoneNumber] is not null
    ');

  CREATE TABLE "stg"."Auct_CA_CheckPhones__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_CA_CheckPhones__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_CA_CheckPhones__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_CA_CheckPhones__dbt_tmp_temp_view"
    end




  
  if object_id ('"dbo"."Auct_Customer_Consignor_DM__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Customer_Consignor_DM__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Customer_Consignor_DM__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Customer_Consignor_DM__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Customer_Consignor_DM__dbt_tmp_temp_view as
    
WITH 
Auct_Consignment_Ex AS (
	 select * from stg.[Auct_Consignment_FinalView]
),
Auct_Customer_Consignor_CTE AS (
    SELECT
        consgt.[ConsignmentID], 
        cxarchive.[ArchivedCustomer_Skey], 
        consgt.[CustomerAccountID], 
        cxarchive.[CurrentCompanyID], 
        cxarchive.[PresumedCustomerType], 
        cxarchive.[ContactID], 
        cxarchive.[Name], 
        cxarchive.[Email],
        cxarchive.[Email_Cleaned], 
        cxarchive.[IsActiveEmail], 
        cxarchive.[EmailBlastOptIn], 
        -- [PhoneID], 
        -- [PhoneNumber], 
        -- [PhoneType], 
        -- [PhoneStatus], 
        -- [IsDefaultPhone], 
        -- [IsActivePhone], 
        cxarchive.[MobilePhone_PhoneID], 
        cxarchive.[MobilePhone_PhoneNumber], 
        cxarchive.[MobilePhone_PhoneStatus], 
        cxarchive.[IsDefaultMobilePhone], 
        cxarchive.[IsActiveMobilePhone], 
        cxarchive.[DirectPhone_PhoneID], 
        cxarchive.[DirectPhone_PhoneNumber], 
        cxarchive.[DirectPhone_PhoneStatus], 
        cxarchive.[IsDefaultDirectPhone], 
        cxarchive.[IsActiveDirectPhone], 
        cxarchive.[HomePhone_PhoneID], 
        cxarchive.[HomePhone_PhoneNumber], 
        cxarchive.[HomePhone_PhoneStatus], 
        cxarchive.[IsDefaultHomePhone], 
        cxarchive.[IsActiveHomePhone], 
        cxarchive.[HomeFax_PhoneID], 
        cxarchive.[HomeFax_PhoneNumber], 
        cxarchive.[HomeFax_PhoneStatus], 
        cxarchive.[IsDefaultHomeFax], 
        cxarchive.[IsActiveHomeFax], 
        cxarchive.[DealerMobile_PhoneID], 
        cxarchive.[DealerMobile_PhoneNumber], 
        cxarchive.[DealerMobile_PhoneStatus], 
        cxarchive.[IsDefaultDealerMobile], 
        cxarchive.[IsActiveDealerMobile], 
        cxarchive.[DealerPhone_PhoneID], 
        cxarchive.[DealerPhone_PhoneNumber], 
        cxarchive.[DealerPhone_PhoneStatus], 
        cxarchive.[IsDefaultDealerPhone], 
        cxarchive.[IsActiveDealerPhone], 
        cxarchive.[DealerFax_PhoneID], 
        cxarchive.[DealerFax_PhoneNumber], 
        cxarchive.[DealerFax_PhoneStatus], 
        cxarchive.[IsDefaultDealerFax], 
        cxarchive.[IsActiveDealerFax], 
        cxarchive.[BusinessPhone_PhoneID], 
        cxarchive.[BusinessPhone_PhoneNumber], 
        cxarchive.[BusinessPhone_PhoneStatus], 
        cxarchive.[IsDefaultBusinessPhone], 
        cxarchive.[IsActiveBusinessPhone], 
        cxarchive.[BusinessFax_PhoneID], 
        cxarchive.[BusinessFax_PhoneNumber], 
        cxarchive.[BusinessFax_PhoneStatus], 
        cxarchive.[IsDefaultBusinessFax], 
        cxarchive.[IsActiveBusinessFax], 
        cxarchive.[BusinessMobile_PhoneID], 
        cxarchive.[BusinessMobile_PhoneNumber], 
        cxarchive.[BusinessMobile_PhoneStatus], 
        cxarchive.[IsDefaultBusinessMobile], 
        cxarchive.[IsActiveBusinessMobile], 
        cxarchive.[VendorPhone_PhoneID], 
        cxarchive.[VendorPhone_PhoneNumber], 
        cxarchive.[VendorPhone_PhoneStatus], 
        cxarchive.[IsDefaultVendorPhone], 
        cxarchive.[IsActiveVendorPhone], 
        cxarchive.[VendorFax_PhoneID], 
        cxarchive.[VendorFax_PhoneNumber], 
        cxarchive.[VendorFax_PhoneStatus], 
        cxarchive.[IsDefaultVendorFax], 
        cxarchive.[IsActiveVendorFax], 
        cxarchive.[RequestNumber_PhoneID], 
        cxarchive.[RequestNumber_PhoneNumber], 
        cxarchive.[RequestNumber_PhoneStatus], 
        cxarchive.[IsDefaultRequestNumber], 
        cxarchive.[IsActiveRequestNumber], 
        cxarchive.[RequestFax_PhoneID], 
        cxarchive.[RequestFax_PhoneNumber], 
        cxarchive.[RequestFax_PhoneStatus], 
        cxarchive.[IsDefaultRequestFax], 
        cxarchive.[IsActiveRequestFax], 
        cxarchive.[LocalPhone_PhoneID], 
        cxarchive.[LocalPhone_PhoneNumber], 
        cxarchive.[LocalPhone_PhoneStatus], 
        cxarchive.[IsDefaultLocalPhone], 
        cxarchive.[IsActiveLocalPhone], 
        cxarchive.[Pager_PhoneID], 
        cxarchive.[Pager_PhoneNumber], 
        cxarchive.[Pager_PhoneStatus], 
        cxarchive.[IsDefaultPager], 
        cxarchive.[IsActivePager], 
        cxarchive.[UnknownPhoneType_PhoneID], 
        cxarchive.[UnknownPhoneType_PhoneNumber], 
        cxarchive.[UnknownPhoneType_PhoneStatus], 
        cxarchive.[IsDefaultUnknownPhoneType], 
        cxarchive.[IsActiveUnknownPhoneType], 
        consgt.[AddressID], 
        cxarchive.[HomeAddress], 
        cxarchive.[BusinessAddress], 
        cxarchive.[LocalAddress], 
        cxarchive.[DealerAddress], 
        cxarchive.[MailingAddress], 
        cxarchive.[City], 
        cxarchive.[State], 
        cxarchive.[PostalCode], 
        cxarchive.[Country], 
        cxarchive.[AddressStatus], 
        cxarchive.[IsDefaultAddress], 
        cxarchive.[IsActiveAddress], 
        cxarchive.[HasDealerInfo], 
        cxarchive.[EffectiveStartDate], 
        cxarchive.[EffectiveEndDate], 
        consgt.[AuctionID], 
        auc.[Auction_Skey], 
        auc.[Year] AS [AuctionYear], 
        auc.[City] AS [AuctionCity], 
        auc.[AuctionBegins], 
        auc.[AuctionEnds], 
        conty.[ConsignorFlag], 
        conty.[AuctionBidderFlag],
        -- ROW_NUMBER() OVER(
        --     PARTITION BY consgt.[ConsignmentID], cxarchive.[ArchivedCustomer_Skey], consgt.[CustomerAccountID], cxarchive.[CurrentCompanyID], cxarchive.[PresumedCustomerType], cxarchive.[ContactID], cxarchive.[Name], cxarchive.[Email], cxarchive.[IsActiveEmail], cxarchive.[EmailBlastOptIn], cxarchive.[MobilePhone_PhoneID], cxarchive.[MobilePhone_PhoneNumber], cxarchive.[MobilePhone_PhoneStatus], cxarchive.[IsDefaultMobilePhone], cxarchive.[IsActiveMobilePhone], cxarchive.[DirectPhone_PhoneID], cxarchive.[DirectPhone_PhoneNumber], cxarchive.[DirectPhone_PhoneStatus], cxarchive.[IsDefaultDirectPhone], cxarchive.[IsActiveDirectPhone], cxarchive.[HomePhone_PhoneID], cxarchive.[HomePhone_PhoneNumber], cxarchive.[HomePhone_PhoneStatus], cxarchive.[IsDefaultHomePhone], cxarchive.[IsActiveHomePhone], cxarchive.[HomeFax_PhoneID], cxarchive.[HomeFax_PhoneNumber], cxarchive.[HomeFax_PhoneStatus], cxarchive.[IsDefaultHomeFax], cxarchive.[IsActiveHomeFax], cxarchive.[DealerMobile_PhoneID], cxarchive.[DealerMobile_PhoneNumber], cxarchive.[DealerMobile_PhoneStatus], cxarchive.[IsDefaultDealerMobile], cxarchive.[IsActiveDealerMobile], cxarchive.[DealerPhone_PhoneID], cxarchive.[DealerPhone_PhoneNumber], cxarchive.[DealerPhone_PhoneStatus], cxarchive.[IsDefaultDealerPhone], cxarchive.[IsActiveDealerPhone], cxarchive.[DealerFax_PhoneID], cxarchive.[DealerFax_PhoneNumber], cxarchive.[DealerFax_PhoneStatus], cxarchive.[IsDefaultDealerFax], cxarchive.[IsActiveDealerFax], cxarchive.[BusinessPhone_PhoneID], cxarchive.[BusinessPhone_PhoneNumber], cxarchive.[BusinessPhone_PhoneStatus], cxarchive.[IsDefaultBusinessPhone], cxarchive.[IsActiveBusinessPhone], cxarchive.[BusinessFax_PhoneID], cxarchive.[BusinessFax_PhoneNumber], cxarchive.[BusinessFax_PhoneStatus], cxarchive.[IsDefaultBusinessFax], cxarchive.[IsActiveBusinessFax], cxarchive.[BusinessMobile_PhoneID], cxarchive.[BusinessMobile_PhoneNumber], cxarchive.[BusinessMobile_PhoneStatus], cxarchive.[IsDefaultBusinessMobile], cxarchive.[IsActiveBusinessMobile], cxarchive.[VendorPhone_PhoneID], cxarchive.[VendorPhone_PhoneNumber], cxarchive.[VendorPhone_PhoneStatus], cxarchive.[IsDefaultVendorPhone], cxarchive.[IsActiveVendorPhone], cxarchive.[VendorFax_PhoneID], cxarchive.[VendorFax_PhoneNumber], cxarchive.[VendorFax_PhoneStatus], cxarchive.[IsDefaultVendorFax], cxarchive.[IsActiveVendorFax], cxarchive.[RequestNumber_PhoneID], cxarchive.[RequestNumber_PhoneNumber], cxarchive.[RequestNumber_PhoneStatus], cxarchive.[IsDefaultRequestNumber], cxarchive.[IsActiveRequestNumber], cxarchive.[RequestFax_PhoneID], cxarchive.[RequestFax_PhoneNumber], cxarchive.[RequestFax_PhoneStatus], cxarchive.[IsDefaultRequestFax], cxarchive.[IsActiveRequestFax], cxarchive.[LocalPhone_PhoneID], cxarchive.[LocalPhone_PhoneNumber], cxarchive.[LocalPhone_PhoneStatus], cxarchive.[IsDefaultLocalPhone], cxarchive.[IsActiveLocalPhone], cxarchive.[Pager_PhoneID], cxarchive.[Pager_PhoneNumber], cxarchive.[Pager_PhoneStatus], cxarchive.[IsDefaultPager], cxarchive.[IsActivePager], cxarchive.[UnknownPhoneType_PhoneID], cxarchive.[UnknownPhoneType_PhoneNumber], cxarchive.[UnknownPhoneType_PhoneStatus], cxarchive.[IsDefaultUnknownPhoneType], cxarchive.[IsActiveUnknownPhoneType], consgt.[AddressID], cxarchive.[HomeAddress], cxarchive.[BusinessAddress], cxarchive.[LocalAddress], cxarchive.[DealerAddress], cxarchive.[MailingAddress], cxarchive.[City], cxarchive.[State], cxarchive.[PostalCode], cxarchive.[Country], cxarchive.[AddressStatus], cxarchive.[IsDefaultAddress], cxarchive.[IsActiveAddress], cxarchive.[HasDealerInfo], cxarchive.[EffectiveStartDate], cxarchive.[EffectiveEndDate], consgt.[AuctionID], auc.[Auction_Skey], auc.[Year], auc.[City], auc.[AuctionBegins], auc.[AuctionEnds], conty.[ConsignorFlag], conty.[AuctionBidderFlag]
        --     ORDER BY consgt.[ConsignmentID], cxarchive.[ArchivedCustomer_Skey], consgt.[CustomerAccountID], cxarchive.[CurrentCompanyID], cxarchive.[PresumedCustomerType], cxarchive.[ContactID], cxarchive.[Name], cxarchive.[Email], cxarchive.[IsActiveEmail], cxarchive.[EmailBlastOptIn], cxarchive.[MobilePhone_PhoneID], cxarchive.[MobilePhone_PhoneNumber], cxarchive.[MobilePhone_PhoneStatus], cxarchive.[IsDefaultMobilePhone], cxarchive.[IsActiveMobilePhone], cxarchive.[DirectPhone_PhoneID], cxarchive.[DirectPhone_PhoneNumber], cxarchive.[DirectPhone_PhoneStatus], cxarchive.[IsDefaultDirectPhone], cxarchive.[IsActiveDirectPhone], cxarchive.[HomePhone_PhoneID], cxarchive.[HomePhone_PhoneNumber], cxarchive.[HomePhone_PhoneStatus], cxarchive.[IsDefaultHomePhone], cxarchive.[IsActiveHomePhone], cxarchive.[HomeFax_PhoneID], cxarchive.[HomeFax_PhoneNumber], cxarchive.[HomeFax_PhoneStatus], cxarchive.[IsDefaultHomeFax], cxarchive.[IsActiveHomeFax], cxarchive.[DealerMobile_PhoneID], cxarchive.[DealerMobile_PhoneNumber], cxarchive.[DealerMobile_PhoneStatus], cxarchive.[IsDefaultDealerMobile], cxarchive.[IsActiveDealerMobile], cxarchive.[DealerPhone_PhoneID], cxarchive.[DealerPhone_PhoneNumber], cxarchive.[DealerPhone_PhoneStatus], cxarchive.[IsDefaultDealerPhone], cxarchive.[IsActiveDealerPhone], cxarchive.[DealerFax_PhoneID], cxarchive.[DealerFax_PhoneNumber], cxarchive.[DealerFax_PhoneStatus], cxarchive.[IsDefaultDealerFax], cxarchive.[IsActiveDealerFax], cxarchive.[BusinessPhone_PhoneID], cxarchive.[BusinessPhone_PhoneNumber], cxarchive.[BusinessPhone_PhoneStatus], cxarchive.[IsDefaultBusinessPhone], cxarchive.[IsActiveBusinessPhone], cxarchive.[BusinessFax_PhoneID], cxarchive.[BusinessFax_PhoneNumber], cxarchive.[BusinessFax_PhoneStatus], cxarchive.[IsDefaultBusinessFax], cxarchive.[IsActiveBusinessFax], cxarchive.[BusinessMobile_PhoneID], cxarchive.[BusinessMobile_PhoneNumber], cxarchive.[BusinessMobile_PhoneStatus], cxarchive.[IsDefaultBusinessMobile], cxarchive.[IsActiveBusinessMobile], cxarchive.[VendorPhone_PhoneID], cxarchive.[VendorPhone_PhoneNumber], cxarchive.[VendorPhone_PhoneStatus], cxarchive.[IsDefaultVendorPhone], cxarchive.[IsActiveVendorPhone], cxarchive.[VendorFax_PhoneID], cxarchive.[VendorFax_PhoneNumber], cxarchive.[VendorFax_PhoneStatus], cxarchive.[IsDefaultVendorFax], cxarchive.[IsActiveVendorFax], cxarchive.[RequestNumber_PhoneID], cxarchive.[RequestNumber_PhoneNumber], cxarchive.[RequestNumber_PhoneStatus], cxarchive.[IsDefaultRequestNumber], cxarchive.[IsActiveRequestNumber], cxarchive.[RequestFax_PhoneID], cxarchive.[RequestFax_PhoneNumber], cxarchive.[RequestFax_PhoneStatus], cxarchive.[IsDefaultRequestFax], cxarchive.[IsActiveRequestFax], cxarchive.[LocalPhone_PhoneID], cxarchive.[LocalPhone_PhoneNumber], cxarchive.[LocalPhone_PhoneStatus], cxarchive.[IsDefaultLocalPhone], cxarchive.[IsActiveLocalPhone], cxarchive.[Pager_PhoneID], cxarchive.[Pager_PhoneNumber], cxarchive.[Pager_PhoneStatus], cxarchive.[IsDefaultPager], cxarchive.[IsActivePager], cxarchive.[UnknownPhoneType_PhoneID], cxarchive.[UnknownPhoneType_PhoneNumber], cxarchive.[UnknownPhoneType_PhoneStatus], cxarchive.[IsDefaultUnknownPhoneType], cxarchive.[IsActiveUnknownPhoneType], consgt.[AddressID], cxarchive.[HomeAddress], cxarchive.[BusinessAddress], cxarchive.[LocalAddress], cxarchive.[DealerAddress], cxarchive.[MailingAddress], cxarchive.[City], cxarchive.[State], cxarchive.[PostalCode], cxarchive.[Country], cxarchive.[AddressStatus], cxarchive.[IsDefaultAddress], cxarchive.[IsActiveAddress], cxarchive.[HasDealerInfo], cxarchive.[EffectiveStartDate], cxarchive.[EffectiveEndDate], consgt.[AuctionID], auc.[Auction_Skey], auc.[Year], auc.[City], auc.[AuctionBegins], auc.[AuctionEnds], conty.[ConsignorFlag], conty.[AuctionBidderFlag]
        -- ) AS [RowNumber] -- (Note) NO DUPLICATE RECORDS 
        ROW_NUMBER() OVER(
            PARTITION BY consgt.[ConsignmentID], consgt.[CustomerAccountID], cxarchive.[CurrentCompanyID], cxarchive.[PresumedCustomerType], cxarchive.[ContactID], cxarchive.[Name], cxarchive.[Email], cxarchive.[IsActiveEmail], cxarchive.[EmailBlastOptIn], cxarchive.[MobilePhone_PhoneID], cxarchive.[MobilePhone_PhoneNumber], cxarchive.[MobilePhone_PhoneStatus], cxarchive.[IsDefaultMobilePhone], cxarchive.[IsActiveMobilePhone], cxarchive.[DirectPhone_PhoneID], cxarchive.[DirectPhone_PhoneNumber], cxarchive.[DirectPhone_PhoneStatus], cxarchive.[IsDefaultDirectPhone], cxarchive.[IsActiveDirectPhone], cxarchive.[HomePhone_PhoneID], cxarchive.[HomePhone_PhoneNumber], cxarchive.[HomePhone_PhoneStatus], cxarchive.[IsDefaultHomePhone], cxarchive.[IsActiveHomePhone], cxarchive.[HomeFax_PhoneID], cxarchive.[HomeFax_PhoneNumber], cxarchive.[HomeFax_PhoneStatus], cxarchive.[IsDefaultHomeFax], cxarchive.[IsActiveHomeFax], cxarchive.[DealerMobile_PhoneID], cxarchive.[DealerMobile_PhoneNumber], cxarchive.[DealerMobile_PhoneStatus], cxarchive.[IsDefaultDealerMobile], cxarchive.[IsActiveDealerMobile], cxarchive.[DealerPhone_PhoneID], cxarchive.[DealerPhone_PhoneNumber], cxarchive.[DealerPhone_PhoneStatus], cxarchive.[IsDefaultDealerPhone], cxarchive.[IsActiveDealerPhone], cxarchive.[DealerFax_PhoneID], cxarchive.[DealerFax_PhoneNumber], cxarchive.[DealerFax_PhoneStatus], cxarchive.[IsDefaultDealerFax], cxarchive.[IsActiveDealerFax], cxarchive.[BusinessPhone_PhoneID], cxarchive.[BusinessPhone_PhoneNumber], cxarchive.[BusinessPhone_PhoneStatus], cxarchive.[IsDefaultBusinessPhone], cxarchive.[IsActiveBusinessPhone], cxarchive.[BusinessFax_PhoneID], cxarchive.[BusinessFax_PhoneNumber], cxarchive.[BusinessFax_PhoneStatus], cxarchive.[IsDefaultBusinessFax], cxarchive.[IsActiveBusinessFax], cxarchive.[BusinessMobile_PhoneID], cxarchive.[BusinessMobile_PhoneNumber], cxarchive.[BusinessMobile_PhoneStatus], cxarchive.[IsDefaultBusinessMobile], cxarchive.[IsActiveBusinessMobile], cxarchive.[VendorPhone_PhoneID], cxarchive.[VendorPhone_PhoneNumber], cxarchive.[VendorPhone_PhoneStatus], cxarchive.[IsDefaultVendorPhone], cxarchive.[IsActiveVendorPhone], cxarchive.[VendorFax_PhoneID], cxarchive.[VendorFax_PhoneNumber], cxarchive.[VendorFax_PhoneStatus], cxarchive.[IsDefaultVendorFax], cxarchive.[IsActiveVendorFax], cxarchive.[RequestNumber_PhoneID], cxarchive.[RequestNumber_PhoneNumber], cxarchive.[RequestNumber_PhoneStatus], cxarchive.[IsDefaultRequestNumber], cxarchive.[IsActiveRequestNumber], cxarchive.[RequestFax_PhoneID], cxarchive.[RequestFax_PhoneNumber], cxarchive.[RequestFax_PhoneStatus], cxarchive.[IsDefaultRequestFax], cxarchive.[IsActiveRequestFax], cxarchive.[LocalPhone_PhoneID], cxarchive.[LocalPhone_PhoneNumber], cxarchive.[LocalPhone_PhoneStatus], cxarchive.[IsDefaultLocalPhone], cxarchive.[IsActiveLocalPhone], cxarchive.[Pager_PhoneID], cxarchive.[Pager_PhoneNumber], cxarchive.[Pager_PhoneStatus], cxarchive.[IsDefaultPager], cxarchive.[IsActivePager], cxarchive.[UnknownPhoneType_PhoneID], cxarchive.[UnknownPhoneType_PhoneNumber], cxarchive.[UnknownPhoneType_PhoneStatus], cxarchive.[IsDefaultUnknownPhoneType], cxarchive.[IsActiveUnknownPhoneType], consgt.[AddressID], cxarchive.[HomeAddress], cxarchive.[BusinessAddress], cxarchive.[LocalAddress], cxarchive.[DealerAddress], cxarchive.[MailingAddress], cxarchive.[City], cxarchive.[State], cxarchive.[PostalCode], cxarchive.[Country], cxarchive.[AddressStatus], cxarchive.[IsDefaultAddress], cxarchive.[IsActiveAddress], cxarchive.[HasDealerInfo], consgt.[AuctionID], auc.[Auction_Skey], auc.[Year], auc.[City], auc.[AuctionBegins], auc.[AuctionEnds], conty.[ConsignorFlag], conty.[AuctionBidderFlag]
            ORDER BY cxarchive.[EffectiveStartDate] DESC, cxarchive.[EffectiveEndDate] DESC
        ) AS [NewRowNumber] -- (Note) WHEN MORE THAN ONE RECORD MEETS THE CRITERIA, CHOOSE THE ONE THAT RECORD''S EFFECTIVE DATE IS MORE CLOSER TO PRESENT, THIS ISSUE HAPPENS WHEN [AuctionBegins] AND [AuctionEnds] ARE THE SAME
    FROM [Auct_Consignment_Ex] consgt
    LEFT JOIN [dbo].[Auct_Auction_DM] auc 
        ON consgt.[AuctionID]=auc.[AuctionID]
    LEFT JOIN [dbo].[Auct_Customer_Archive_BR] cxarchive
        ON consgt.[CustomerAccountID]=cxarchive.[CustomerAccountID]
            AND consgt.[AddressID]=cxarchive.[AddressID]
    LEFT JOIN [stg].[Auct_Customer_ContactType_lookup] conty 
        ON consgt.[CustomerAccountID]=conty.[CustomerAccountID]
            AND consgt.[AuctionID]=conty.[AuctionID]
    WHERE auc.[AuctionBegins] BETWEEN cxarchive.[EffectiveStartDate] AND cxarchive.[EffectiveEndDate] 
        AND auc.[AuctionEnds] BETWEEN cxarchive.[EffectiveStartDate] AND cxarchive.[EffectiveEndDate]
)
SELECT 
    HASHBYTES(''SHA2_256'', 
        COALESCE(CAST([ConsignmentID] AS VARCHAR(20)), '''') 
    ) AS [Consignor_Skey], 
    [ConsignmentID], 
    [ArchivedCustomer_Skey], 
    [CustomerAccountID], 
    [CurrentCompanyID], 
    [PresumedCustomerType], 
    [Auction_Skey], 
    [AuctionID], 
    [AuctionYear], 
    [AuctionCity], 
    [AuctionBegins], 
    [AuctionEnds], 
    -- [ContactType], 
    -- [CreatedContactType], 
    [ConsignorFlag], 
    [AuctionBidderFlag], 
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
    -- [Address], 
    -- [AddressType], 
    [BusinessAddress], 
    [HomeAddress], 
    [DealerAddress], 
    [LocalAddress], 
    [MailingAddress], 
    [City], 
    [State], 
    [PostalCode], 
    [Country], 
    [AddressStatus], 
    [IsDefaultAddress], 
    [IsActiveAddress], 
    [HasDealerInfo], 
    [EffectiveStartDate], 
    [EffectiveEndDate]
FROM Auct_Customer_Consignor_CTE
WHERE [NewRowNumber]=1
    ');

  CREATE TABLE "dbo"."Auct_Customer_Consignor_DM__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Customer_Consignor_DM__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Customer_Consignor_DM__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Customer_Consignor_DM__dbt_tmp_temp_view"
    end



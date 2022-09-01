{{ config(materialized='table',schema='stg')}}
SELECT
   HASHBYTES('SHA2_256', 
        COALESCE(CAST([BIDDERID] AS VARCHAR(20)), '')
    ) AS [Bidder_Skey],
    [BIDDERID] as  [BidderID],
    [BIDDERTYPEID] as  [BidderTypeID],
    [BIDDERSTATUSID] as  [BidderStatusID],
    [CUSTOMERACCOUNTID] as  [CustomerAccountID],
    [BIDDERNUMBER] as  [BidderNumber],
    [ANNIVERSARYDATE] as  [AnniversaryDate],
    [APPROVEDBY] as  [ApprovedByUserID],
    [COMMENTS] as  [Comments],
    [CREATED] as  [Created],
    [UPDATEEVENTID] as  [UpdateEventID],
    [BIDLIMIT] as  [BidLimit],
    [PAYMENTMETHODID] as  [PaymentMethodID],
    [ADDRESSID] as  [AddressID],
    [SHIPPINGADDRESSID] as  [ShippingAddressID],
    [CONTACTPHONEID] as [ContactPhoneID]

FROM [stg].[Auct_Bidder_FinalView]
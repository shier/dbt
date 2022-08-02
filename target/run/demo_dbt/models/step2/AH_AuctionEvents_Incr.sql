
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."AH_AuctionEvents_Incr" ("effectiveTime", "Createdon", "Updatedon", "Deletedon", "Startdttm", "Enddttm", "EstimatedLastEnddttm", "ID", "ClosingGroupIncrementseconds", "CurrentclosingGroup", "CurrentsoftclosingGroup", "CurrentLotOrder", "OwnerID", "SoftclosingGroupIncrementseconds", "LotCount", "CategoryID", "CurrencyID", "FollowLiveEnabled", "ProxyBidding", "Published", "PreviewLots", "LotsTaxable", "LastUpdatedUser", "Status", "Timezone", "TermsandConditions", "PrimaryImageURI", "SecondaryImageURI", "OwnerUserName", "ShippingInfo", "SubTitle", "ManagedByName", "Title", "Description", "BuyersPremiumPercent")
    (
        select "effectiveTime", "Createdon", "Updatedon", "Deletedon", "Startdttm", "Enddttm", "EstimatedLastEnddttm", "ID", "ClosingGroupIncrementseconds", "CurrentclosingGroup", "CurrentsoftclosingGroup", "CurrentLotOrder", "OwnerID", "SoftclosingGroupIncrementseconds", "LotCount", "CategoryID", "CurrencyID", "FollowLiveEnabled", "ProxyBidding", "Published", "PreviewLots", "LotsTaxable", "LastUpdatedUser", "Status", "Timezone", "TermsandConditions", "PrimaryImageURI", "SecondaryImageURI", "OwnerUserName", "ShippingInfo", "SubTitle", "ManagedByName", "Title", "Description", "BuyersPremiumPercent"
        from "DedicatedSQLpoolBJ"."stg"."#AH_AuctionEvents_Incr__dbt_tmp"
    );

  
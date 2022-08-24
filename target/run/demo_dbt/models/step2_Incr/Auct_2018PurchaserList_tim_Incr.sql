
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."Auct_2018PurchaserList_tim_Incr" ("hashValue", "effectiveTime", "First_Name", "Last_Name", "Email", "Phone", "Address", "Address2", "City", "State", "ZipCode", "Country", "Optin", "AuctionID", "Source")
    (
        select "hashValue", "effectiveTime", "First_Name", "Last_Name", "Email", "Phone", "Address", "Address2", "City", "State", "ZipCode", "Country", "Optin", "AuctionID", "Source"
        from "DedicatedSQLpoolBJ"."stg"."#Auct_2018PurchaserList_tim_Incr__dbt_tmp"
    );

  

      
  

    insert into "DedicatedSQLpoolBJ"."stg"."AH_Addresses_Incr" ("effectiveTime", "Createdon", "Updatedon", "Deletedon", "ID", "CountryID", "UserID", "Stateregion", "ZipPostal", "LastUpdatedUser", "Description", "FirstName", "LastName", "STreet1", "STreet2", "City")
    (
        select "effectiveTime", "Createdon", "Updatedon", "Deletedon", "ID", "CountryID", "UserID", "Stateregion", "ZipPostal", "LastUpdatedUser", "Description", "FirstName", "LastName", "STreet1", "STreet2", "City"
        from "DedicatedSQLpoolBJ"."stg"."#AH_Addresses_Incr__dbt_tmp"
    );

  
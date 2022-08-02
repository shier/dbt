
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."AH_BannerCategories_Incr" ("effectiveTime", "ID", "BannerID", "CategoryID", "Createdon", "Updatedon", "Deletedon")
    (
        select "effectiveTime", "ID", "BannerID", "CategoryID", "Createdon", "Updatedon", "Deletedon"
        from "DedicatedSQLpoolBJ"."stg"."#AH_BannerCategories_Incr__dbt_tmp"
    );

  
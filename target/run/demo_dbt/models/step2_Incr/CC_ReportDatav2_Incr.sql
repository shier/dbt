
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."CC_ReportDatav2_Incr" ("hashValue", "effectiveTime", "OptimisticLockField", "GcRecord", "IsinplaceReport", "OID", "OBJectTypeName", "Name", "ParaMetersoBJectTypeName", "PredefinedReportType", "Content")
    (
        select "hashValue", "effectiveTime", "OptimisticLockField", "GcRecord", "IsinplaceReport", "OID", "OBJectTypeName", "Name", "ParaMetersoBJectTypeName", "PredefinedReportType", "Content"
        from "DedicatedSQLpoolBJ"."stg"."#CC_ReportDatav2_Incr__dbt_tmp"
    );

  
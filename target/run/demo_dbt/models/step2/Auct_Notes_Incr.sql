
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."Auct_Notes_Incr" ("hashValue", "effectiveTime", "NoteID", "NoteCategoryID", "Created", "Text", "UserName")
    (
        select "hashValue", "effectiveTime", "NoteID", "NoteCategoryID", "Created", "Text", "UserName"
        from "DedicatedSQLpoolBJ"."stg"."#Auct_Notes_Incr__dbt_tmp"
    );

  
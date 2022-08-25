dbt run --project-dir Auct --models step1_InterView
dbt run --project-dir Auct --models step1_InterView_Spec
dbt run --project-dir Auct --models step2_Incr
dbt --project-dir Auct snapshot
dbt run --project-dir Auct --models step0
dbt run --project-dir Auct --models step3_FinalView
dbt run --project-dir Auct --models step3_FinalViewClean
dbt run --project-dir Auct --models step4_dboJoin
dbt run --project-dir Auct --models step4_dboSingle


dbt run --project-dir Auct --select step5_Address_Merge/Auct_AM_1_First_Spotted_Address.sql
dbt run --project-dir Auct --select step5_Address_Merge/Auct_AM_2_First_Spotted_ShippingAddress.sql
dbt run --project-dir Auct --select step5_Address_Merge/Auct_AM_3_First_Spotted_Address_Merged.sql
dbt run --project-dir Auct --select step5_Address_Merge/Auct_AM_4_Temp2.sql
dbt run --project-dir Auct --select step5_Address_Merge/Auct_AM_5_Address_Merged1.sql
dbt run --project-dir Auct --select step5_Address_Merge/Auct_Address_Merge.sql

# dbt run --project-dir Auct --models step6_BuildAfterDbo

dbt run --project-dir Auct --select step6_BuildAfterDbo/Auct_Contact_Merge.sql
dbt run --project-dir Auct --select step6_BuildAfterDbo/Auct_Email_Merge.sql
dbt run --project-dir Auct --select step6_BuildAfterDbo/Auct_Phone_Merge.sql
dbt run --project-dir Auct --select step6_BuildAfterDbo/Auct_Customer_ContactType_Lookup.sql
dbt run --project-dir Auct --select step6_BuildAfterDbo/Auct_Customer_HistoricalCompanyID_Lookup.sql
dbt run --project-dir Auct --select step6_BuildAfterDbo/Auct_Item_BR.sql


dbt run --project-dir Auct --select step7_afterLookup/Auct_CA_1_Auct_Customer_CTE1.sql
dbt run --project-dir Auct --select step7_afterLookup/Auct_CA_2_Temp1.sql
dbt run --project-dir Auct --select step7_afterLookup/Auct_CA_3_Temp2.sql
dbt run --project-dir Auct --select step7_afterLookup/Auct_Customer_Archive_BR.sql


dbt run --project-dir Auct --models step8_afterBR



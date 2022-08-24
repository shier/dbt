# dbt run --project-dir Auct --models step1_InterView
# dbt run --project-dir Auct --models step1_InterView_Spec
# dbt run --project-dir Auct --models step2_Incr
# dbt --project-dir Auct snapshot
# dbt run --project-dir Auct --models step0
# dbt run --project-dir Auct --models step3_FinalView
# dbt run --project-dir Auct --models step3_FinalViewClean
# dbt run --project-dir Auct --models step4_dboJoin
# dbt run --project-dir Auct --models step4_dboSingle
dbt run --project-dir Auct --models step5_BuildAfterDbo
dbt run --project-dir Auct --models step6_afterMearge
dbt run --project-dir Auct --models step7_afterLookup
dbt run --project-dir Auct --models step8_afterBR
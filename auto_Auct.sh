# dbt run --project-dir Auct --models step1_InterView
# dbt run --project-dir Auct --models step1_InterView_Spec
# dbt run --project-dir Auct --models step2_Incr
# dbt snapshot --project-dir Auct 
# dbt run --project-dir Auct --models step3_FinalView
# dbt run --project-dir Auct --models step3_FinalViewClean
# dbt run --project-dir Auct --models step4_dboJoin
# dbt run --project-dir Auct --models step4_dboSingle
# dbt run --project-dir Auct --models step5_0
# dbt run --project-dir Auct --models step5_1
# dbt run --project-dir Auct --models step5_2
# dbt run --project-dir Auct --models step5_3
# dbt run --project-dir Auct --models step5_4
# dbt run --project-dir Auct --models step5_5
# dbt run --project-dir Auct --models step5_6
# dbt run --project-dir Auct --models step5_7
# dbt run --project-dir Auct --models step6_BuildAfterDbo
# dbt run --project-dir Auct --models step7_afterLookup

dbt run --project-dir Auct --models step7_1
dbt run --project-dir Auct --models step7_2
dbt run --project-dir Auct --models step7_3
dbt run --project-dir Auct --models step7_4
dbt run --project-dir Auct --models step7_5
dbt run --project-dir Auct --models step7_6

# dbt run --project-dir Auct --models step8_afterBR
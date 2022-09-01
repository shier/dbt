dbt run --project-dir ClassicCars --models step1_InterView
dbt run --project-dir ClassicCars --models step1_InterView_Spec
dbt run --project-dir ClassicCars --models step2_Incr
dbt snapshot --project-dir ClassicCars 
dbt run --project-dir ClassicCars --models step3_FinalView
dbt run --project-dir ClassicCars --models step3_FinalView_Spec
dbt run --project-dir ClassicCars --models step4_dboJoin
dbt run --project-dir ClassicCars --models step4_dboSingle
dbt run --project-dir ClassicCars --models step5_DM

# address_Merge
# dbt run --project-dir ClassicCars --models step5_0
# dbt run --project-dir ClassicCars --models step5_1
# dbt run --project-dir ClassicCars --models step5_2
# dbt run --project-dir ClassicCars --models step5_3
# dbt run --project-dir ClassicCars --models step5_4
# dbt run --project-dir ClassicCars --models step5_5
# dbt run --project-dir ClassicCars --models step5_6
# dbt run --project-dir ClassicCars --models step5_7
# dbt run --project-dir ClassicCars --models step6_1
# dbt run --project-dir ClassicCars --models step6_2

# dbt run --project-dir ClassicCars --models step7_1
# dbt run --project-dir ClassicCars --models step7_2
# dbt run --project-dir ClassicCars --models step7_3
# dbt run --project-dir ClassicCars --models step7_4
# dbt run --project-dir ClassicCars --models step7_5
# dbt run --project-dir ClassicCars --models step7_6

# dbt run --project-dir ClassicCars --models step7_Customer_Archive_BR_Full

# dbt run --project-dir ClassicCars --models step8_afterBR

# full data

# dbt run --project-dir ClassicCars --models step5_0
# dbt run --project-dir ClassicCars --models step5_1
# dbt run --project-dir ClassicCars --models step5_2
# dbt run --project-dir ClassicCars --models step5_3
# dbt run --project-dir ClassicCars --models step5_4
# dbt run --project-dir ClassicCars --models step5_5
# dbt run --project-dir ClassicCars --models step5_6
# dbt run --project-dir ClassicCars --models step5_Full

dbt run --project-dir ClassicCars --models step6_0
dbt run --project-dir ClassicCars --models step6_1
dbt run --project-dir ClassicCars --models step6_2
dbt run --project-dir ClassicCars --models step6_3
# dbt run --project-dir ClassicCars --models step6_1_Full
# dbt run --project-dir ClassicCars --models step6_2_Full

dbt run --project-dir ClassicCars --models step7_1
dbt run --project-dir ClassicCars --models step7_2
dbt run --project-dir ClassicCars --models step7_3
dbt run --project-dir ClassicCars --models step7_4
dbt run --project-dir ClassicCars --models step7_5
dbt run --project-dir ClassicCars --models step7_6
# dbt run --project-dir ClassicCars --models step7_Full
dbt run --project-dir ClassicCars --models step8
# dbt run --project-dir ClassicCars --models step8_Full

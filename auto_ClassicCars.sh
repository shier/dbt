# dbt run --project-dir ClassicCars --models step1_InterView
# dbt run --project-dir ClassicCars --models step1_InterView_Spec
dbt run --project-dir ClassicCars --models step2_Incr
dbt snapshot --project-dir ClassicCars 
# dbt run --project-dir ClassicCars --models step3_FinalView
# dbt run --project-dir ClassicCars --models step3_FinalView_Spec
dbt run --project-dir ClassicCars --models step4_dboJoin
# dbt run --project-dir ClassicCars --models step4_dboSingle
dbt run --project-dir ClassicCars --models step5_DM
dbt run --project-dir ClassicCars --models step6_1_FT_stg
dbt run --project-dir ClassicCars --models step6_2_FT_tmp
dbt run --project-dir ClassicCars --models step6_3_FT

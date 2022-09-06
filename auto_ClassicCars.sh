
# This step, build view from Raw tabale , just need running once
# ---------------------------------------------------------------------------
# dbt run --project-dir ClassicCars --models step1_InterView
# dbt run --project-dir ClassicCars --models step1_InterView_Spec

# This step, increamental data.
# ---------------------------------------------------------------------------
dbt run --project-dir ClassicCars --models step2_Incr
dbt snapshot --project-dir ClassicCars 

# This step, build final view from the Increamental tabale , just need running once
# ---------------------------------------------------------------------------
# dbt run --project-dir ClassicCars --models step3_FinalView
# dbt run --project-dir ClassicCars --models step3_FinalView_Spec

# This step, build some join table
# ---------------------------------------------------------------------------
dbt run --project-dir ClassicCars --models step4_dboJoin

# This step, build table base on data map. skip this
# ---------------------------------------------------------------------------
# # dbt run --project-dir ClassicCars --models step4_dboSingle

# This step, build DM table
# ---------------------------------------------------------------------------
dbt run --project-dir ClassicCars --models step5_DM

# Those step, build FT table
# ---------------------------------------------------------------------------
dbt run --project-dir ClassicCars --models step6_1_FT_stg
dbt run --project-dir ClassicCars --models step6_2_FT_tmp
dbt run --project-dir ClassicCars --models step6_3_FT

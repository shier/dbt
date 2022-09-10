# This step, build view from Raw tabale , just need running once
# ---------------------------------------------------------------------------
# dbt run --project-dir AH --models step1_InterView
# dbt run --project-dir AH --models step1_InterView_Spec

# Those steps, increamental data.
# ---------------------------------------------------------------------------

dbt run --project-dir AH --models step2_Incr
dbt snapshot --project-dir AH 

# This step, build final view from the Increamental tabale , just need running once
# ---------------------------------------------------------------------------
# dbt run --project-dir AH --models step3_FinalView
# dbt run --project-dir AH --models step3_FinalViewClean

# This step, build table base on data map. skip this
# ---------------------------------------------------------------------------
# dbt run --project-dir AH --models step4_dboJoin
# dbt run --project-dir AH --models step4_dboSingle

# This step, build DM table
# ---------------------------------------------------------------------------
dbt run --project-dir AH --models step5_DM

dbt run --project-dir AH --models step6_FT_1_stg
dbt run --project-dir AH --models step6_FT_2_tmp
dbt run --project-dir AH --models step6_FT_3

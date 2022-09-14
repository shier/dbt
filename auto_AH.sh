# This step, upload the log file to anayized then clean the log file on VM
curl -F "file=@AH/logs/dbt.log" "http://shawngao.ca/weCloudData/res/saveLogFile.php"
dbt clean --project-dir AH 
# rm AH/logs/*
# rm -r -f AH/target/*
# dbt run --project-dir AH -m tag:processing 

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

# Those step, build FT table
# ---------------------------------------------------------------------------
dbt run --project-dir AH --models step6_FT_1_stg
dbt run --project-dir AH --models step6_FT_2_tmp
dbt run --project-dir AH --models step6_FT_3

# Those step, build Flatten the ListingProperties Table table
# ---------------------------------------------------------------------------
dbt run --project-dir AH --models step7_1
dbt run --project-dir AH --models step7_2
dbt run --project-dir AH --models step7_3
dbt run --project-dir AH --models step7_4

# Those step, build DM/FT table base on Flatten the ListingProperties Table
# ---------------------------------------------------------------------------
dbt run --project-dir AH --models step8_1_DM
dbt run --project-dir AH --models step8_2_FT_stg
dbt run --project-dir AH --models step8_3_FT_tmp
dbt run --project-dir AH --models step8_4_FT



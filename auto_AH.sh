# This step, upload the log file to anayized then clean the log file on VM
curl -F "file=@AH/logs/dbt.log" "http://shawngao.ca/weCloudData/res/saveLogFile.php"
sudo dbt clean --project-dir AH 
# rm AH/logs/*
# rm -r -f AH/target/*
# sudo dbt run --project-dir AH -m tag:processing 

# This step, build view from Raw tabale , just need running once
# ---------------------------------------------------------------------------
# sudo dbt run --project-dir AH --models step1_InterView
# sudo dbt run --project-dir AH --models step1_InterView_Spec

# Those steps, increamental data.
# ---------------------------------------------------------------------------

sudo dbt run --project-dir AH --models step2_Incr
sudo dbt snapshot --project-dir AH 

# This step, build final view from the Increamental tabale , just need running once
# ---------------------------------------------------------------------------
# sudo dbt run --project-dir AH --models step3_FinalView
# sudo dbt run --project-dir AH --models step3_FinalViewClean

# This step, build table base on data map. skip this
# ---------------------------------------------------------------------------
# sudo dbt run --project-dir AH --models step4_dboJoin
sudo dbt run --project-dir AH --models step4_dboSingle

# This step, build DM table
# ---------------------------------------------------------------------------
sudo dbt run --project-dir AH --models step5_DM

# Those step, build FT table
# ---------------------------------------------------------------------------
sudo dbt run --project-dir AH --models step6_FT_1_stg
sudo dbt run --project-dir AH --models step6_FT_2_tmp
sudo dbt run --project-dir AH --models step6_FT_3

# Those step, build Flatten the ListingProperties Table table
# ---------------------------------------------------------------------------
sudo dbt run --project-dir AH --models step7_1
sudo dbt run --project-dir AH --models step7_2
sudo dbt run --project-dir AH --models step7_3
sudo dbt run --project-dir AH --models step7_4

# Those step, build DM/FT table base on Flatten the ListingProperties Table
# ---------------------------------------------------------------------------
sudo dbt run --project-dir AH --models step8_1_DM
sudo dbt run --project-dir AH --models step8_2_FT_stg
sudo dbt run --project-dir AH --models step8_3_FT_tmp
sudo dbt run --project-dir AH --models step8_4_FT



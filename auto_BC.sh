# This step, upload the log file to anayized then clean the log file on VM
curl -F "file=@BC/logs/dbt.log" "http://shawngao.ca/weCloudData/res/saveLogFile.php"
dbt clean --project-dir BC 

# This step, build view from Raw tabale , just need running once
# ---------------------------------------------------------------------------
dbt run --project-dir BC --models step1_InterView

# Those steps, increamental data.
# ---------------------------------------------------------------------------
dbt snapshot --project-dir BC 

# This step, build final view from the Increamental tabale , just need running once
# ---------------------------------------------------------------------------
dbt run --project-dir BC --models step3_FinalView

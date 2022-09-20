
# This step, upload the log file to anayized then clean the log file on VM
curl -F "file=@ClassicCars/logs/dbt.log" "http://shawngao.ca/weCloudData/res/saveLogFile.php"
sudo dbt clean --project-dir ClassicCars
# rm ClassicCars/logs/*
# This step, build view from Raw tabale , just need running once
# ---------------------------------------------------------------------------
# sudo dbt run --project-dir ClassicCars --models step1_InterView
# sudo dbt run --project-dir ClassicCars --models step1_InterView_Spec
# This step, increamental data.
# ---------------------------------------------------------------------------
sudo dbt run --project-dir ClassicCars --models step2_Incr
sudo dbt snapshot --project-dir ClassicCars 
# This step, build final view from the Increamental tabale , just need running once
# ---------------------------------------------------------------------------
# sudo dbt run --project-dir ClassicCars --models step3_FinalView
# sudo dbt run --project-dir ClassicCars --models step3_FinalView_Spec
# This step, build table base on data map. skip this
# ---------------------------------------------------------------------------
sudo dbt run --project-dir ClassicCars --models step4_dboSingle
# This step, build DM table
# ---------------------------------------------------------------------------
sudo dbt run --project-dir ClassicCars --models step5_DM
# Those step, build FT table
# ---------------------------------------------------------------------------
sudo dbt run --project-dir ClassicCars --models step6_1_FT_stg
sudo dbt run --project-dir ClassicCars --models step6_2_FT_tmp
sudo dbt run --project-dir ClassicCars --models step6_3_FT
curl -F "file=@Auctioneer/logs/dbt.log" "http://shawngao.ca/weCloudData/res/saveLogFile.php"
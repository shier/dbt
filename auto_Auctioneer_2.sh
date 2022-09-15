# This step, upload the log file to anayized then clean the log file on VM
curl -F "file=@Auctioneer/logs/dbt.log" "http://shawngao.ca/weCloudData/res/saveLogFile.php"
dbt clean --project-dir Auctioneer 

# Those step, build Auct_Customer_Archive_BR table phase 2
# ---------------------------------------------------------------------------
dbt run --project-dir Auctioneer --models step7_3
dbt run --project-dir Auctioneer --models step7_4
dbt run --project-dir Auctioneer --models step7_5
dbt run --project-dir Auctioneer --models step7_6

# Those step, build DM table
# ---------------------------------------------------------------------------
dbt run --project-dir Auctioneer --models step8_1_DM_stg
dbt run --project-dir Auctioneer --models step8_2_DM
dbt run --project-dir Auctioneer --models step8_3_DM

# # Those step, build FT table
# ---------------------------------------------------------------------------
dbt run --project-dir Auctioneer --models step9_1_FT_stg
dbt run --project-dir Auctioneer --models step9_2_FT_tmp
dbt run --project-dir Auctioneer --models step9_3_FT

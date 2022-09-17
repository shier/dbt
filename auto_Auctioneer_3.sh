# This step, upload the log file to anayized then clean the log file on VM
curl -F "file=@Auctioneer/logs/dbt.log" "http://shawngao.ca/weCloudData/res/saveLogFile.php"
sudo dbt clean --project-dir Auctioneer 


# Those step, build Auct_Customer_Archive_BR table phase 2
# ---------------------------------------------------------------------------
sudo dbt run --project-dir Auctioneer --models step7_4
sudo dbt run --project-dir Auctioneer --models step7_5
sudo dbt run --project-dir Auctioneer --models step7_6

# Those step, build DM table
# ---------------------------------------------------------------------------
sudo dbt run --project-dir Auctioneer --models step8_1_DM_stg
sudo dbt run --project-dir Auctioneer --models step8_2_DM
sudo dbt run --project-dir Auctioneer --models step8_3_DM

# # Those step, build FT table
# ---------------------------------------------------------------------------
sudo dbt run --project-dir Auctioneer --models step9_1_FT_stg
sudo dbt run --project-dir Auctioneer --models step9_2_FT_tmp

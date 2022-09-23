# This step, upload the log file to anayized then clean the log file on VM
curl -F "file=@Auctioneer/logs/dbt.log" "http://shawngao.ca/weCloudData/res/saveLogFile.php"
sudo dbt clean --project-dir Auctioneer 
# Those step, build Auct_Address_Merge table
# ---------------------------------------------------------------------------
sudo dbt run --project-dir Auctioneer --models step5_0
sudo dbt run --project-dir Auctioneer --models step5_1
sudo dbt run --project-dir Auctioneer --models step5_2
sudo dbt run --project-dir Auctioneer --models step5_3
sudo dbt run --project-dir Auctioneer --models step5_4
sudo dbt run --project-dir Auctioneer --models step5_5
sudo dbt run --project-dir Auctioneer --models step5_6
# Those step, build Merge table , lookup table and BR table
# ---------------------------------------------------------------------------
sudo dbt run --project-dir Auctioneer --models step6_0
sudo dbt run --project-dir Auctioneer --models step6_1
sudo dbt run --project-dir Auctioneer --models step6_2
sudo dbt run --project-dir Auctioneer --models step6_3
# Those step, build Auct_Customer_Archive_BR table phase 1
# ---------------------------------------------------------------------------
sudo dbt run --project-dir Auctioneer --models step7_0
sudo dbt run --project-dir Auctioneer --models step7_1
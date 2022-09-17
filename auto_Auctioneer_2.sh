# This step, upload the log file to anayized then clean the log file on VM
curl -F "file=@Auctioneer/logs/dbt.log" "http://shawngao.ca/weCloudData/res/saveLogFile.php"
sudo dbt clean --project-dir Auctioneer 

sudo dbt run --project-dir Auctioneer --models step7_2
sudo dbt run --project-dir Auctioneer --models step7_3




curl -F "file=@AH/logs/dbt.log" "http://shawngao.ca/weCloudData/res/saveLogFile.php"
curl -F "file=@ClassicCars/logs/dbt.log" "http://shawngao.ca/weCloudData/res/saveLogFile.php"
curl -F "file=@Auctioneer/logs/dbt.log" "http://shawngao.ca/weCloudData/res/saveLogFile.php"
curl -F "file=@BC/logs/dbt.log" "http://shawngao.ca/weCloudData/res/saveLogFile.php"

#  sudo dbt run --select tag:test0922 --project-dir Auctioneer 
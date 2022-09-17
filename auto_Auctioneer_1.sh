# This step, upload the log file to anayized then clean the log file on VM
curl -F "file=@Auctioneer/logs/dbt.log" "http://shawngao.ca/weCloudData/res/saveLogFile.php"
sudo dbt clean --project-dir Auctioneer 
# rm Auctioneer/logs/*
# rm -r -f Auctioneer/target/*

# sudo dbt run --project-dir Auctioneer -m tag:update 

# This step, build view from Raw tabale , just need running once
# ---------------------------------------------------------------------------
# sudo dbt run --project-dir Auctioneer --models step1_InterView
# sudo dbt run --project-dir Auctioneer --models step1_InterView_Spec

# This step, increamental data.
# ---------------------------------------------------------------------------
sudo dbt run --project-dir Auctioneer --models step2_Incr
sudo dbt snapshot --project-dir Auctioneer 

# This step, build final view from the Increamental tabale , just need running once
# ---------------------------------------------------------------------------
# sudo dbt run --project-dir Auctioneer --models step3_FinalView
# sudo dbt run --project-dir Auctioneer --models step3_FinalViewClean
# sudo dbt run --project-dir Auctioneer --models step3_FinalView_Rename

# This step, build table base on data map. skip this
# ---------------------------------------------------------------------------
sudo dbt run --project-dir Auctioneer --models step4_dboSingle


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

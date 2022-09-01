# dbt run --project-dir Auctioneer --models step1_InterView
# dbt run --project-dir Auctioneer --models step1_InterView_Spec
dbt run --project-dir Auctioneer --models step2_Incr
dbt snapshot --project-dir Auctioneer 
# dbt run --project-dir Auctioneer --models step3_FinalView
# dbt run --project-dir Auctioneer --models step3_FinalViewClean
dbt run --project-dir Auctioneer --models step4_dboJoin
dbt run --project-dir Auctioneer --models step4_dboSingle

# address_Merge
# dbt run --project-dir Auctioneer --models step5_0
# dbt run --project-dir Auctioneer --models step5_1
# dbt run --project-dir Auctioneer --models step5_2
# dbt run --project-dir Auctioneer --models step5_3
# dbt run --project-dir Auctioneer --models step5_4
# dbt run --project-dir Auctioneer --models step5_5
# dbt run --project-dir Auctioneer --models step5_6
# dbt run --project-dir Auctioneer --models step5_7
# dbt run --project-dir Auctioneer --models step6_1
# dbt run --project-dir Auctioneer --models step6_2

# dbt run --project-dir Auctioneer --models step7_1
# dbt run --project-dir Auctioneer --models step7_2
# dbt run --project-dir Auctioneer --models step7_3
# dbt run --project-dir Auctioneer --models step7_4
# dbt run --project-dir Auctioneer --models step7_5
# dbt run --project-dir Auctioneer --models step7_6

# dbt run --project-dir Auctioneer --models step7_Customer_Archive_BR_Full

# dbt run --project-dir Auctioneer --models step8_afterBR

# full data

dbt run --project-dir Auctioneer --models step5_0
dbt run --project-dir Auctioneer --models step5_1
dbt run --project-dir Auctioneer --models step5_2
dbt run --project-dir Auctioneer --models step5_3
dbt run --project-dir Auctioneer --models step5_4
dbt run --project-dir Auctioneer --models step5_5
dbt run --project-dir Auctioneer --models step5_6
# dbt run --project-dir Auctioneer --models step5_Full

dbt run --project-dir Auctioneer --models step6_0
dbt run --project-dir Auctioneer --models step6_1
dbt run --project-dir Auctioneer --models step6_2
dbt run --project-dir Auctioneer --models step6_3
# dbt run --project-dir Auctioneer --models step6_1_Full
# dbt run --project-dir Auctioneer --models step6_2_Full

dbt run --project-dir Auctioneer --models step7_1
dbt run --project-dir Auctioneer --models step7_2
dbt run --project-dir Auctioneer --models step7_3
dbt run --project-dir Auctioneer --models step7_4
dbt run --project-dir Auctioneer --models step7_5
dbt run --project-dir Auctioneer --models step7_6
# dbt run --project-dir Auctioneer --models step7_Full
dbt run --project-dir Auctioneer --models step8
# dbt run --project-dir Auctioneer --models step8_Full

# This step, build view from Raw tabale , just need running once
# ---------------------------------------------------------------------------
# dbt run --project-dir Auctioneer --models step1_InterView
# dbt run --project-dir Auctioneer --models step1_InterView_Spec

# This step, increamental data.
# ---------------------------------------------------------------------------
dbt run --project-dir Auctioneer --models step2_Incr
dbt snapshot --project-dir Auctioneer 

# This step, build final view from the Increamental tabale , just need running once
# ---------------------------------------------------------------------------
# dbt run --project-dir Auctioneer --models step3_FinalView
# dbt run --project-dir Auctioneer --models step3_FinalViewClean
# dbt run --project-dir Auctioneer --models step3_FinalView_Rename

# This step, build table base on data map. skip this
# ---------------------------------------------------------------------------
# dbt run --project-dir Auctioneer --models step4_dboJoin
# dbt run --project-dir Auctioneer --models step4_dboSingle


# Those step, build Auct_Address_Merge table
# ---------------------------------------------------------------------------
dbt run --project-dir Auctioneer --models step5_0
dbt run --project-dir Auctioneer --models step5_1
dbt run --project-dir Auctioneer --models step5_2
dbt run --project-dir Auctioneer --models step5_3
dbt run --project-dir Auctioneer --models step5_4
dbt run --project-dir Auctioneer --models step5_5
dbt run --project-dir Auctioneer --models step5_6

# Those step, build Merge table , lookup table and BR table
# ---------------------------------------------------------------------------
dbt run --project-dir Auctioneer --models step6_0
dbt run --project-dir Auctioneer --models step6_1
dbt run --project-dir Auctioneer --models step6_2
dbt run --project-dir Auctioneer --models step6_3

# Those step, build Auct_Customer_Archive_BR table
# ---------------------------------------------------------------------------
dbt run --project-dir Auctioneer --models step7_1
dbt run --project-dir Auctioneer --models step7_2
dbt run --project-dir Auctioneer --models step7_3
dbt run --project-dir Auctioneer --models step7_4
dbt run --project-dir Auctioneer --models step7_5
dbt run --project-dir Auctioneer --models step7_6

# Those step, build DM table
# ---------------------------------------------------------------------------
dbt run --project-dir Auctioneer --models step8_1_DM_stg
dbt run --project-dir Auctioneer --models step8_2_DM
dbt run --project-dir Auctioneer --models step8_3_DM

# Those step, build FT table
# ---------------------------------------------------------------------------
dbt run --project-dir Auctioneer --models step9_1_FT_stg
dbt run --project-dir Auctioneer --models step9_2_FT_tmp
dbt run --project-dir Auctioneer --models step9_3_FT

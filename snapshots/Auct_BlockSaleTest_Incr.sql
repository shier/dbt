{% snapshot Auct_BlockSaleTest_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='BlockSaleTestID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_BlockSaleTest_InterView]
{% endsnapshot %}
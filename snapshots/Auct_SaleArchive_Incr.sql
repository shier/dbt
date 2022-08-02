{% snapshot Auct_SaleArchive_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='SaleArchiveID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_SaleArchive_InterView]
{% endsnapshot %}
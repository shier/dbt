{% snapshot Auct_Docket_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='DocketID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Docket_InterView]
{% endsnapshot %}
{% snapshot Auct_MultiMedia_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='MultiMediaID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_MultiMedia_InterView]
{% endsnapshot %}
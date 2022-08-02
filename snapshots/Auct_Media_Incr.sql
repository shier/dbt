{% snapshot Auct_Media_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='MediaID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Media_InterView]
{% endsnapshot %}
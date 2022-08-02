{% snapshot Auct_GLInfo_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='GLInfoID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_GLInfo_InterView]
{% endsnapshot %}
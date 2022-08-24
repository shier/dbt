{% snapshot Auct_SysPublications_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='PubID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_SysPublications_InterView]
{% endsnapshot %}
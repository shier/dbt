{% snapshot Auct_NewAdditions_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='NewAdditionsID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_NewAdditions_InterView]
{% endsnapshot %}
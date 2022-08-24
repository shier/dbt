{% snapshot Auct_Profiles_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ProfileID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Profiles_InterView]
{% endsnapshot %}
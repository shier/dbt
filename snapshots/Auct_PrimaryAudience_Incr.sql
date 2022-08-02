{% snapshot Auct_PrimaryAudience_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='PrimaryAudienceID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_PrimaryAudience_InterView]
{% endsnapshot %}
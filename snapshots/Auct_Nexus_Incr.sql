{% snapshot Auct_Nexus_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='NexusID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Nexus_InterView]
{% endsnapshot %}
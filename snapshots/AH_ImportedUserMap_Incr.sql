{% snapshot AH_ImportedUserMap_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='LocalUserID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[AH_ImportedUserMap_InterView]
{% endsnapshot %}
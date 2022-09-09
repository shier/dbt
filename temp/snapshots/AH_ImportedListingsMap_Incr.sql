{% snapshot AH_ImportedListingsMap_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='LoCallistingID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[AH_ImportedListingsMap_InterView]
{% endsnapshot %}
{% snapshot AH_AuctionEventMedias_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[AH_AuctionEventMedias_InterView]
{% endsnapshot %}
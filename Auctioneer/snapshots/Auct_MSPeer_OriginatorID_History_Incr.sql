{% snapshot Auct_MSPeer_OriginatorID_History_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='Originator_ID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_MSPeer_OriginatorID_History_InterView]
{% endsnapshot %}
{% snapshot Auct_MSPeer_Response_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='Request_ID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_MSPeer_Response_InterView]
{% endsnapshot %}
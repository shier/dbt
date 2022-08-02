{% snapshot Auct_OutgoingRequestQueue_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='OutgoingRequestQueueID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_OutgoingRequestQueue_InterView]
{% endsnapshot %}
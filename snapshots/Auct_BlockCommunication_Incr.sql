{% snapshot Auct_BlockCommunication_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='BlockCommunicationID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_BlockCommunication_InterView]
{% endsnapshot %}
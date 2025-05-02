#### Enter your Splunk Observability Cloud credentials.
```cp env.sample .env```

fill your SPLUNK_ACCESS_TOKEN and REALM in `.env`

#### Run the project :

```docker-compose -f docker-compose-otel.yaml up -d --build --remove-orphans```
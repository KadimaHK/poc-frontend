# poc_frontend
A Flutter project.

## API
Notice: Set the ```etc/hosts``` file to point to the backend server when running the local server if you want to use test a domain name in local e.g. ```0.0.0.0 poc-bar-app.com```. 
```

after the backend up  
```openapi-generator generate -t dev_scripts/api_templates/out -i http://<host>/api/ -o lib/api -g dart```
```openapi-generator generate -t dev_scripts/api_templates/out -i http://18.167.173.94/api/ -o lib/api -g dart```

custom api
```openapi-generator generate -i http://<host>/custom-api/v1/ -o lib/custom-api -g dart```

OpenAPI Generator Templates 
```cd dev_scripts/api_templates```
```openapi-generator author template -g dart```






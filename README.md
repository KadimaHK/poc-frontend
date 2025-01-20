# poc_frontend
A Flutter project.

## API
Notice: Set the etc/hosts file to point to the backend server when running the local server.

after the backend up  
```openapi-generator generate -t dev_scripts/api_templates/out -i http://poc-bar-app.com/api/ -o lib/api -g dart```
```openapi-generator generate -t dev_scripts/api_templates/out -i http://18.167.173.94/api/ -o lib/api -g dart```

OpenAPI Generator Templates 
```cd dev_scripts/api_templates```
```openapi-generator author template -g dart```






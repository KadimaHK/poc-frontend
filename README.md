# poc_frontend
A Flutter project.

## API
after the backend up  
```openapi-generator generate -i http://0.0.0.0:3000 -o lib/api -g dart```





------
rm -rf lib/api
openapi-generator generate -i http://0.0.0.0:3000 -o lib/api -g dart
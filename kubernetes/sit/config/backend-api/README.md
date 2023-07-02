# backend-api folder

This folder includes files specific for the backend API configurations that **should be updated with values specific for the API**.

## openapi.yml

This file should contain the OpenAPI specification of the API. The OAS version supported and works with light4j is OpenAPI 3.0. This OpenAPI specification can be designed and downloaded in SwaggerHub Ent where it checks the standards that some of the light4j handlers require.

### security and securitySchemes

These are required if the **JwtVerifyHandler** is to be used. This should include the scopes per path which the handler will base the token validation on.

> The scopes specified in the OpenAPI are the scopes to be onboarded in Okta.

## handler.yml

This file includes the list of light4j handlers to be used in each path. Each path can use different set of handlers depending on what chain is used. A new chain can be created if needed.

### path

The path name specified here should be the exact path name in the `openapi.yml`.

## values.yml

This file is mainly for setting the values for the different configuration that can be found in the config folder or in the other YAML files from the light-proxy image.

### client.oauth

These variables are for JwtVerifyHandler specifically. When JwtVerifyHandler is enabled then these should be populated with correct values. This is in relation to Okta.

### server.serviceId

This is used for tracing in the Canada side. The value to be set here is the image of the backend API to be specific.

### proxy.apiId

This is used for tracing in the Canada side. This is 4-digit app ID assigned to the API.

### body.enabled

This is used to enable/disable the body parser usage. the default value of this is set to true.

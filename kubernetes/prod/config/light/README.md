# light folder

This folder includes files specific for light-proxy configuration that **should not be edited**. These files just need to be copied here for the light4j to work properly. The only file that could be changed if needed is the `proxy.yml` which has the value of the port of the backend API container.

## proxy.yml

One value that needs to be noted here is the port specified in the `hosts`. If a different port is to be used for the backend API, the value in this file should be changed. It should be the same with the `containerPort` of the backend API specified in the `deployment.yml`.
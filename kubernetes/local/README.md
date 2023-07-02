# local folder

This folder includes the resources specific for local testing. There are files that are for local testing purposes only which are not needed in other environments.

## kustomization.yml

This file specifies the list of resources and the other configuration files. If there is a new file, the path to it should be specified in this file for it to be applied.

## deployment.yml

This file includes configurations for deploying in Kubernetes. The details for the light-proxy and the backend API containers are to be specified here such as the image and port. The environment variables that are used by the backend API are also specified here.

### Light Proxy Container

- The `containerPort` should be same as the port specified in `port` and `targetPort` in the `service-nodeport.yml`.

### Backend API Container

- The image name and version of the backend API should not be hardcoded. Placeholders are used unless this is to be tested in local.
- The `containerPort` should be same as the port specified in `hosts` in the `config/light/proxy.yml`.

### Environment

- Any Boolean or numeric value should be enclosed in double quotation marks.
- Do not use hyphen in the environment name. The value being retrieved will always be blank.
- Underscore is an acceptable special character for the environment name.

## service-nodeport.yml

This file is used for local testing. This is where the container port should be specified so when the API is called, it will call the particular container. In this case, the port specified is `8080` which is the `containerPort` of the light-proxy specified in the `deployment.yml`. This means that when calling the API, it will call the light-proxy first before the backend API.

When running in local, the port to be used when calling the API is the `nodePort`.

## regcred.yml

This file is used for pulling an image from the artifactory when testing in local. This includes the credentials needed. No changes should be done in this file.

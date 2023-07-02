# sit folder

This folder includes the resources specific for SIT environment.

## kustomization.yml

This file specifies the list of resources and the other configuration files. If there is a new file, the path to it should be specified in this file for it to be applied.

## deployment.yml

This file includes configurations for deploying in Kubernetes. The details for the light-proxy and the backend API containers are to be specified here such as the image and port. The environment variables that are used by the backend API are also specified here.

### Light Proxy Container

- The version of the light-proxy image should not be hardcoded. Placeholder is used unless this is to be tested in local.
- The `containerPort` should be the port specified in the Jenkins job for deployment.

### Backend API Container

- The image name and version of the backend API should not be hardcoded. Placeholders are used unless this is to be tested in local.
- The `containerPort` should be same as the port specified in `hosts` in the `config/light/proxy.yml`.

### Environment

- Any Boolean or numeric value should be enclosed in double quotation marks.
- Any password or value that should be encrypted in the environment should just be a reference to the `sealed_secrets.yml`.
- Do not use hyphen in the environment name. The value being retrieved will always be blank.
- Underscore is an acceptable special character for the environment name.

## sealed_secrets.yml

This file is generated via Jenkins job. This includes the passwords or any value that should be encrypted. This file is per cluster which means that if the file is generated using the Jenkins job in DEV, this can only be used in DEV. It won't be decrypted correctly if used in other environments.

The key name under the `encryptedData` is the key name that should be specified under `secretKeyRef` in the `deployment.yml`.

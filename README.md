# Google AppEngine via Docker and Custom Domain

This repository contains examples of using Google AppEngine via Docker and Custom Domain.

## Usage & Installation

First, activate your Google AppEngine in spesific region. Important! your region can't be change to other region, so choose it wisely.
If you using Gitlab CI/CD, you can prepare service account json keyfile and upload it into Settings > CI/CD > Variable and name it "APP_ENGINE_SERVICE_ACCOUNT".
If you want to manual deploy, run this following command to deploy this application into your Google AppEngine :
```bash
gcloud app deploy app.yaml --version=1.0.0
```

After application successfully deployed, you can check the deployed url, usually at http://<GOOGLE_PROJECT_ID>.et.r.appspot.com
If you want to add custom domain for your application, open AppEngine Dashboard > Settings > Custom Domains > Add Custom Domain.
After you added some required record for verification and CNAME record into your domain, run this following command to deploy application into your Custom Domain :
```bash
gcloud app deploy dispatch.yaml
```

## Additional Information

In this repository, we recommend to use version in each deployment of AppEngine. Because when some trouble happen, you can immediately stop current version and start the older version via AppEngine Dashboard > Versions > Choose Service Name > Choose Stable Version of Your Service.

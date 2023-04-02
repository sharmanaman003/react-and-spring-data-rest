#Readme
   # FORK Repository
   git clone https://github.com/sharmanaman003/react-and-spring-data-rest.git

   

1. Separate the frontend and backend components

   Separate the frontend and backend components of the application into separate codebases or directories. We have used 2 folders payroll-backend and payroll-frontend.

2. Containerize the frontend and backend
    
    Create Dockerfiles for the frontend and backend components to containerize them. These Dockerfiles will define the images used for deployment in AKS.Individual dockerfile is stored inside the payroll-backend and payroll-frontend folders respectively

3. Set up an Azure DevOps project

   Create a new project in Azure DevOps and connect it to your GitHub repository.

4. Create an Azure DevOps pipeline

    Create a new pipeline in Azure DevOps and select your GitHub repository as the source. Choose a YAML pipeline and use the provided code for the pipeline to build the Docker images and push them to the container registry. The pipeline yaml can be found insde the Automation folder.
       Application :
       a. Application/BackendPipeline.yaml : Yaml pipleine to build and push backend image to ACR
       b. Application/FrontendPipeline.yaml :Yaml pipleine to build and push Frontend image to ACR 
       c. Application/KubernetesDeploymentPipeline.yaml :Yaml pipleine to deploy frontend and backend application into aks 
       d. Application/payroll-backend-manifest.yaml :k8's Manifest file for backend application
       e. Application/payroll-backend-manifest.yaml :k8's Manifest file for Frontend application

       Infra
       a. Infra/acr-aks-deploy.json : ARM template to deploy ACR and AKS
       b. Infra/acr-aks-deploy.parameters.json : ARM parameter file  to deploy ACR and AKS 
       c. Infra/azure-pipelines-1.yml : Yaml pipeline to create ACR AKS and postgress using arm 
       d. Infra/postgres-deploy.json : ARM parameter file  to deploy Postgress

    

5. Customize the pipeline
   Customize the pipeline as needed, such as changing the container registry or environment names.

6. Create Kubernetes manifests for the frontend and backend
   Create Kubernetes manifests for the frontend and backend. This will define the deployment, service, and ingress resources for each component. PLease refer to Application/payroll-backend-manifest.yaml and Application/payroll-frontend-manifest.yaml


7. Deploy the application to AKS
   Use kubectl apply to deploy the application to AKS using the Kubernetes manifests. I.e. KubernetesDeploymentPipeline.yaml

8. Access the application
   Once the deployment is successful, you should be able to access the application by navigating to the IP address of your Kubernetes cluster in your web browser.


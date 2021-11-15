# Orchestration fundamentals

## What is orchestrration ?

Container orchestration is the automation of much of the operational effort required to run containerized workloads and services. This includes a wide range of things software teams need to manage a container's lifecycle, including provisioning, deployment, scaling (up and down), networking, load balancing and more.

## What is the benefit of using container orchestration ?

The use of orchestration is to create an infrastructure with the following characteristics that includes:

- **Improved applications development**: With containers, applications development, testing and production are accelerated. New versions with new features can be set up quickly in production and rolled back when there is a need for it. Thus, containers are ideal for use in Agile environments. They also make for more efficient DevOps since containerized applications will run practically anywhere.
- **Simplified installation and deployment**: Since everything related to the application resides within containers, application installation is easier. When there is a need to scale up due to increased demand or traffic, container orchestration allows for the easy setup of new instances.
- **Lower resource requirements**: Since containers do not include OS images, they are more lightweight than traditional applications. If you are currently operating in a virtualized environment, they are also much easier to operate and maintain than VMs. Container orchestration tools help with resource management.
Lower costs: Several containers can be accommodated per host, even in environments that do not use any form of container orchestration. The number of containers residing per host is higher in companies using container orchestration software.
- **Better productivity**: Containers already allow rapid testing, deployment, patching and scaling up. Container orchestration tools make these processes even faster.
- **Improved security**: With applications and their processes isolated in containers, application security is enhanced. Container orchestration tools also ensure that only specific resources are shared between users.
- **Ideal for microservices architecture**: Traditional applications are mostly monolithic in nature—they have tightly coupled components acting together to perform the tasks they were designed to do. Microservices are characterized by loose coupling among application components, with each service able to be scaled or modified separately. Containers are built for microservices. Container orchestration allows containerized services to act more fluidly in conjunction with other services.
- **Performance boost**: It gives a boost in the increase in the performance of an application as the down time for an application decreases drastically because container orchestration helps in *self healing*, *high availability of resources* and *scaling up the resources of an application easily*

## Different orchestration systems in use

- Google -> Kubernetes
- Apache -> Mesos
- Docker -> Swarm
- AWS -> ECS

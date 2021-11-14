# Namespaces

In Kubernetes, namespaces provides a mechanism for isolating groups of resources within a single cluster. Names of resources need to be unique within a namespace, but not across namespaces. Namespace-based scoping is applicable only for namespaced objects (e.g. Deployments, Services, etc) and not for cluster-wide objects (e.g. StorageClass, Nodes, PersistentVolumes, etc).

Generally we know that every pod should have a unique name. But if multiple namespaces can have pods with the same name.

## Setting up namespaces

### Default namespaces

To get the default namespaces run the command \
`kubectl get namespaces`

### Get all namespaces

To get all the namespaces run the command \
`kubectl get pods --all-namespaces`.

### Get the pods for a specific namespace

To get the pods running in a specific name space run the command \
`kubectl get pods --namespace <namespace>`.

### Delete pods from a namespace

To delete pods from a namespace run the command `kubectl delete namespaces <namespace>`.

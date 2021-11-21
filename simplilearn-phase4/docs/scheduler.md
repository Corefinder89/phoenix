# Scheduler

The Kubernetes scheduler is a control plane process which assigns Pods to Nodes. The scheduler determines which Nodes are valid placements for each Pod in the scheduling queue according to constraints and available resources. The scheduler then ranks each valid Node and binds the Pod to a suitable Node.

## Scheduler algorithm

- Scheduling configurations can be applied on a pod or on the nodes. We can apply custom configurations to influence the scheduling decisions. These configurations will get the highest priority.
- Identifies the heart beat of a node, that is it identifies if a node is enabled / disabled / not ready / not reachable. Based on the availability of a node scheduler will deploy a pod.
- Scheduler creates a ranking based on the least utilised nodes and based on the ranking a pod is deployed on the node.

There are two type of considerations that can be applied:

- Pod level configurations.
- Node level configurations.

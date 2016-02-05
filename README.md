Build and push to gcr.io:

    ./build_and_push.sh

Create cluster:

    gcloud container clusters create cluster-1 --num-nodes 1 --machine-type g1-small

Start on the cluster:

    kubectl run twistlocktest --image=gcr.io/chees-info/twistlocktest:v1 --port=8080

Create a loadbalancer:

    kubectl expose rc twistlocktest --type="LoadBalancer"

To get the external ip of the loadbalancer:

    kubectl get services twistlocktest

View:

    open http://104.155.61.161:8080/Christiaan

View Kubernetes UI:

    kubectl proxy
    open http://localhost:8001/ui

Scale replication controller:

    kubectl scale rc twistlocktest --replicas=3

Scale nodes:

    gcloud container clusters resize

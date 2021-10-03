aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 803138993991.dkr.ecr.us-east-1.amazonaws.com

docker build -t 803138993991.dkr.ecr.us-east-1.amazonaws.com/cs-ggs-s-preferences .
docker run -p 12039:12039 803138993991.dkr.ecr.us-east-1.amazonaws.com/cs-ggs-s-preferences
docker push 803138993991.dkr.ecr.us-east-1.amazonaws.com/cs-ggs-s-preferences
kubectl apply -f cs-ggs-s-preferences-config.yaml
kubectl apply -f cs-ggs-s-preferences-deployment.yaml
kubectl apply -f cs-ggs-s-preferences.yaml

kubernetes@kubernetes-VirtualBox:/media/sf_workspace/projects/personal/demo-app/cs-ggs-s-preferences/acme-demo/configuration$ kubectl get svc
NAME                   TYPE        CLUSTER-IP       EXTERNAL-IP   PORT(S)   AGE
cs-ggs-s-preferences   ClusterIP   10.100.144.140   <none>        80/TCP    9s
kubernetes             ClusterIP   10.100.0.1       <none>        443/TCP   66m

docker build -t 803138993991.dkr.ecr.us-east-1.amazonaws.com/cs-ggs-s-globalsearch .
docker run -p 12039:12039 803138993991.dkr.ecr.us-east-1.amazonaws.com/cs-ggs-s-globalsearch
docker push 803138993991.dkr.ecr.us-east-1.amazonaws.com/cs-ggs-s-globalsearch
kubectl apply -f cs-ggs-s-globalsearch-config.yaml
kubectl apply -f cs-ggs-s-globalsearch-deployment.yaml
kubectl apply -f cs-ggs-s-globalsearch.yaml
NAME                    TYPE        CLUSTER-IP       EXTERNAL-IP   PORT(S)   AGE
cs-ggs-s-globalsearch   ClusterIP   10.100.136.157   <none>        80/TCP    8s

docker build -t 803138993991.dkr.ecr.us-east-1.amazonaws.com/cs-ggs-p-search .
docker run -p 12039:12039 803138993991.dkr.ecr.us-east-1.amazonaws.com/cs-ggs-p-search
docker push 803138993991.dkr.ecr.us-east-1.amazonaws.com/cs-ggs-p-search
kubectl apply -f cs-ggs-p-search-config.yaml
kubectl apply -f cs-ggs-p-search-deployment.yaml
kubectl apply -f cs-ggs-p-search.yaml
NAME                    TYPE        CLUSTER-IP       EXTERNAL-IP   PORT(S)   AGE
cs-ggs-p-search         ClusterIP   10.100.251.221   <none>        80/TCP    16s

docker build -t 803138993991.dkr.ecr.us-east-1.amazonaws.com/cs-x-connect .
docker run -p 12039:12039 803138993991.dkr.ecr.us-east-1.amazonaws.com/cs-x-connect
docker push 803138993991.dkr.ecr.us-east-1.amazonaws.com/cs-x-connect
kubectl apply -f cs-x-connect-config.yaml
kubectl apply -f cs-x-connect-deployment.yaml
kubectl apply -f cs-x-connect.yaml
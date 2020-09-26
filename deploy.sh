docker build -t isaacloft0906/multi-client:latest -t isaacloft0906/multi-client:$SHA -f ./client/Dockerfile ./client
docker build -t isaacloft0906/multi-server:latest -t isaacloft0906/multi-server:$SHA -f ./server/Dockerfile ./server
docker build -t isaacloft0906/multi-worker:latest -t isaacloft0906/multi-worker:$SHA -f ./worker/Dockerfile ./worker
docker push isaacloft0906/multi-client:lastest
docker push isaacloft0906/multi-client:$SHA

docker push isaacloft0906/multi-server:lastest
docker push isaacloft0906/multi-server:$SHA

docker push isaacloft0906/multi-worker:lastest
docker push isaacloft0906/multi-worker:$SHA

kubectl apply -f k8s
kubectl set image deployments/server-deployment server=isaacloft/multi-server:$SHA
kubectl set image deployments/client-deployment client=isaacloft/multi-client:$SHA
kubectl set image deployments/worker-deployment worker=isaacloft/multi-worker:$SHA

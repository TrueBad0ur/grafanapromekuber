helm install prometheus prometheus-community/prometheus -f prometheus.yml
#helm install nginx-ingress-tcp nginx-stable/nginx-ingress --set-string 'controller.config.entries.use-proxy-protocol=true' --create-namespace --namespace nginx-ingress-tcp
kubectl expose service prometheus-server --type=NodePort --target-port=9090 --name=prometheus-server-ext

helm repo add grafana https://grafana.github.io/helm-charts

kubectl expose service grafana --type=NodePort --target-port=3000 --name=grafana-ext

# grafana dashboard id - 315

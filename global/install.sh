helm install prometheus prometheus-community/prometheus -f prometheus.yml
helm install nginx-ingress-tcp nginx-stable/nginx-ingress --set-string 'controller.config.entries.use-proxy-protocol=true' --create-namespace --namespace nginx-ingress-tcp

k apply -f ingress.yml

(add domain to hosting)

helm repo add grafana https://grafana.github.io/helm-charts
helm install grafana grafana/grafana -f grafana.yml

(add domain to hosting)

# grafana dashboard id - 315

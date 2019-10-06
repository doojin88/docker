
curl -sfL https://get.k3s.io | sh -
sudo chown ubuntu:ubuntu /etc/rancher/k3s/k3s.yaml

kubectl get nodes

cp /etc/rancher/k3s/k3s.yaml ~/.kube/config


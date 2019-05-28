setup:
	kubectl apply -f strapi/deployment.yaml
	kubectl apply -f strapi/service.yaml
	kubectl apply -f strapi/ingress.yaml

	kubectl apply -f mongodb/mongo-service.yaml
	kubectl apply -f mongodb/mongo-statefulset.yaml
clean:
	kubectl delete -f strapi/deployment.yaml
	kubectl delete -f strapi/service.yaml
	kubectl delete -f strapi/ingress.yaml
	
	kubectl delete -f mongodb/mongo-service.yaml
	kubectl delete -f mongodb/mongo-statefulset.yaml

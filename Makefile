DOMAIN=promptlab.com

dev-up:
	docker compose -f docker-compose.dev.yml up -d --build

dev-down:
	docker compose -f docker-compose.dev.yml down

ps:
	docker compose -f docker-compose.dev.yml ps

logs:
	docker compose -f docker-compose.dev.yml logs -f

stack-deploy:
	docker stack deploy -c stack.yml promptlab

stack-rm:
	docker stack rm promptlab

secrets-create:
	@echo "Criando secrets no Swarm..."
	docker secret create OPENAI_API_KEY openai.key
	docker secret create PROMPTLAYER_API_KEY promptlayer.key

stack-logs:
	docker service logs promptlab_frontend
	docker service logs promptlab_backend

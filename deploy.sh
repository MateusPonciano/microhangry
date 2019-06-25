docker login -u _ -p "$HEROKU_TOKEN"  registry.heroku.com
docker tag microhangry_core-api registry.heroku.com/micro-teste/web
docker push registry.heroku.com/micro-teste/web
docker run registry.heroku.com/micro-teste/web npm run typeorm -- migration:run
heroku container:release web -a micro-teste --password $HEROKU_TOKEN --username

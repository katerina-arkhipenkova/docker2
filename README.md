Сборка образа:
docker build . --tag=my_app

Запуск:
docker run -e MY_ENV="my_env" -p 8000:8000 my_app
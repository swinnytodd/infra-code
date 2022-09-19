##         Wordpress + Nginx + ssl

#### Скачиваем репозиторий для сборки Docker-образа wordpress.

```git clone https://github.com/csteer-pro/wp-sample.git```

#### Скачиваем репозиторий и переходим в папку docker.

```git clone https://github.com/csteer-pro/infra-code.git && cd csteer-pro-infra-code/docker```

##### Запускаем эту команду для генерации сертификатов.

```bash run_once.sh```

##### В предложенном примере мы будем генерировать сертификат, используя домен ```vcap.me```, который отвечает на запросы как ```127.0.0.1```.

##### После создания сертификатов, для запуска контейнеров используйте эту команду.

```docker-compose up``` 

##### Для запуска wordpress открываем сайт по ссылке.

[wordpress](http://vcap.me)


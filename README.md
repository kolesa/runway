> Есть аэропорт с одной взлетной полосой. Диспетчеру предоставляется интерфейс, позволяющий отправить самолет на взлет. Интерфейс позволяет отправлять несколько самолетов на взлет одновременно. Сам взлет занимает 10+ секунд. Интерфейс отображает текущий статус самолета (вылетел, ожидает вылета (если отправили на взлет несколько), в ангаре), а также историю изменения статуса. Используйте Ruby 2.4, Rails 5, PostgreSQL.

#### Setup: Development
 
```bash
bundle install
```

```bash
cp config/database.yml.example config/database.yml
```

```bash
bundle exec rake db:create db:migrate db:seed
```

New tab
```bash
seris-server
```

New tab
```bash
sidkiq
```

```bash
rails s
```

## Migration
1. Copied grafana.db in this project root
2. Prepare env files in `config` dir (replace `<FEEDME>`)
3. Prepare db.load file(replace `<FEEDME>`)
4. Execute
   ```shell
   import.sh
   ```
5. Now you have "data-pg" docker volume for migrate to you need

## Trouble shutting

If after migration grafana still crash on internal migrations at startup, you need:
1. Remove docker volume "data-pg" if exists
2. Execute - to start clear grafana and postgres
    ```shell
    docker compose -f docker-compose-grafana.yml up -d
    ```
3. Connect to "pg-db" container and execute `select.sql` file
4. Select execution result past into db.load
5. Execute - to stop docker compose
    ```shell
    docker compose -f docker-compose-grafana.yml down
    ```

WARNING!!! All configurated alerts - has been executed after start **docker-compose-grafana.yml** if "data-pg" volume successfull migrated

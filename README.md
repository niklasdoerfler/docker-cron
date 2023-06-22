# docker-cron

Simple docker image based on alpine linux to run scheduled tasks inside the container, triggered by cron daemon.


## Usage

There are two ways to configure cron deamon:

- For simple cases in which only one command should be executed, you can simply define the environment variable `CRON_CONFIG_LINE` and fill it with you cron command like the following example: `CRON_CONFIG_LINE='* * * * * your-command'`.
- For more advanced scenarios run docker container and mount your crontab files into the folder `/var/spool/cron/crontabs/`.

## Examples

- `docker run --rm -it -e CRON_CONFIG_LINE='* * * * * echo $(date) >> /tmp/test' ghcr.io/niklasdoerfler/docker-cron`

ARG TAG_VERSION=2.2.1
FROM apache/airflow:$TAG_VERSION as base

#default {AIRFLOW_HOME}/dags
# ARG AIRFLOW__CORE__DAGS_FOLDER srv/dags
# #default {AIRFLOW_HOME}/dags
# ARG AIRFLOW__CORE__PLUGINS_FOLDER srv/plugins
# ARG AIRFLOW__LOGGING__BASE_LOG_FOLDER srv/logs

COPY airflow/requirements/prod.txt .
RUN pip install -r prod.txt




FROM base as dev
RUN airflow db init
COPY . .







# postgres (DW)
sudo docker run --name dbt-postgres -e POSTGRES_PASSWORD=$PASS -p 5432:5432 -d postgres

# python (EL)
python3 -m venv .venv

# libs
greenlet==2.0.2
numpy==1.25.2
pandas==2.0.3
psycopg2-binary==2.9.7
python-dateutil==2.8.2
pytz==2023.3
six==1.16.0
SQLAlchemy==2.0.19
typing_extensions==4.7.1
tzdata==2023.3

# dbt
pip install dbt-postgres
dbt init <project_name>
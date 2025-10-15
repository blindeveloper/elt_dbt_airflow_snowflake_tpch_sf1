cp -rp "./data_pipeline" "./airflow/dags/dbt/"

echo "✅ Folder copied successfully from 'dbt' to 'airflow dags'"

cd ../airflow
astro dev start


# How to use

This is a starter project generated by MLOps Stacks. Key components are:

- ML problem based on NYC taxi fare dataset
- MLflow recipes as training pipeline


## To use this on a local dev machine:

- Prepare local environment
  - Set up Databricks CLI
  - Configure the `experiments` section of `profiles/local.yaml` to log experiments to Databricks tracking server
  - Update virtual env with required packaged
    - Run `pip install -I -r requirements.txt -r test-requirements.txt`
  - Run training pipeline (MLflow recipes)
    - Run `mlflow recipes run --profile local`
      - See [reference](https://mlflow.org/docs/latest/recipes.html#model-development-workflow) (Step 3)
      - Note that steps are logged locally to `~/.mlflow/recipes`
  - Run unit tests
    - Install `pytest` in virtual env
    - Reactivate the virtual env to ensure that `pytest` takes into account the libraries installed before it
    - Run `pytest tests`
  - `<TODO>`: Run remotely


## To use this on Databricks:

- Run on Databricks `DEV` environment
  - Edit `profiles/databricks-dev.yaml`
    - Configure the `experiment` section to the right experiment (same experiment as used by `local`)
    - Point the intgestion sources and output tables to the right locations
  - Train model
    - Run `notebooks/Train` interactively
      - Note that the experiments are logged to the location specified in `profiles/databricks-dev.yaml`
      - The `DEV` profile is registered as a step in the notebook
  - Evaluate and register model
    - Run the same notebook - later cells let you evaluate and train
    - Versions in registered model (specified in profile yaml file) are incremented

    


from dynaconf import Dynaconf
import os


env = os.environ.get('APP_ENVIRONMENT', None)
if env not in ['development', 'production']:
    env = 'default'
print(f"Running {env}...")

app_config = Dynaconf(
    envvar_prefix="APP",
    merge_enabled=True,
    settings_files=["settings.yaml", "settings-dev.yaml"],
    environments=True,
    load_dotenv=True,
    default_env="default",
    env=env,
)


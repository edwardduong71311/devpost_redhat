from fastapi import APIRouter

from src.devpost_redhat.config.app_config import app_config

router = APIRouter(
    prefix="/users",
)


@router.get("/")
def read_users():
    return [{"username": "Rick"}, {"username": "Morty"}]


@router.get("/1")
def read_root():
    return {"Hello": app_config.app_user}

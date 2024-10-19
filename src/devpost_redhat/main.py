from fastapi import FastAPI

from src.devpost_redhat.controller import user

app = FastAPI()
app.include_router(user.router)
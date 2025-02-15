from fastapi import APIRouter
from api.routes import books

api_router = APIRouter()
api_router.include_router(books.router, prefix="/books", tags=["books"])
 # ✅ Add the correct prefix

@api_router.get("/healthcheck")
async def health_check():
    """Checks if server is active."""
    return {"status": "active"}
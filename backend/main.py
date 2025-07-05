from fastapi import FastAPI, Depends
from sqlalchemy.orm import Session
from database import SessionLocal, engine
from models import Journal, Base


app = FastAPI()

# Crear tablas si no existen
Base.metadata.create_all(bind=engine)

# Dependency
def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()

@app.get("/journals")
def read_journals(db: Session = Depends(get_db)):
    return db.query(Journal).all()

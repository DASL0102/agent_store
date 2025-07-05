from sqlalchemy import Column, Integer, String, Text, TIMESTAMP
from database import Base

class Journal(Base):
    __tablename__ = "journals"

    id = Column(Integer, primary_key=True, index=True)
    journable_type = Column(String(50))
    journable_id = Column(Integer)
    user_id = Column(Integer)
    notes = Column(Text)
    created_at = Column(TIMESTAMP)
    version = Column(Integer)
    updated_at = Column(TIMESTAMP)
    data_type = Column(String(50))

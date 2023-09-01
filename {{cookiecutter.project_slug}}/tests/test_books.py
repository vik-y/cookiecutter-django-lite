import pytest
from sample_app.models import Book
from rest_framework.test import APIClient

pytestmark = pytest.mark.django_db

def test_create_book():
    book = Book.objects.create(
        title="Sample Book",
        author="Author",
        published_date="2022-01-01",
        isbn_number="1234567890123",
        page_count=100,
        language="English"
    )
    assert Book.objects.count() == 1
    assert book.title == "Sample Book"

def test_books_api(api_client: APIClient):
    request = api_client.get("/api/books/")
    assert request.status_code == 200
from django.db import models

class Book(models.Model):
    title = models.CharField(max_length=255)
    author = models.CharField(max_length=255)
    published_date = models.DateField()
    isbn_number = models.CharField(max_length=13, unique=True)
    page_count = models.PositiveIntegerField()
    language = models.CharField(max_length=20)

    def __str__(self):
        return self.title
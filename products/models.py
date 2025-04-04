from django.db import models
from django.utils.translation import gettext as _

# Create your models here.
class Product(models.Model):
    name = models.CharField(_("Name"), max_length=50,blank=False,null=False)
    description = models.TextField(_("Description"))
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)


    def __str__(self) -> str:
        return f'{self.name}'
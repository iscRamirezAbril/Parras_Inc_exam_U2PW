from django.contrib import admin

from apps.Production.models import *

# Register your models here.
@admin.register(Area)
class AreaAdmin(admin.ModelAdmin):
    list_display = ['id', 'areaName']

@admin.register(ProductionLine)
class ProductionLineAdmin(admin.ModelAdmin):
    list_display = ['id', 'productionLineName', 'productionLineDescription', 'productionLineArea',]

@admin.register(LineMember)
class ProdLineMemberAdmin(admin.ModelAdmin):
    list_display = ['id', 'lineMemberName', 'lineMemberWorker',]

@admin.register(ProductOrder)
class ProductOrdAdmin(admin.ModelAdmin):
    list_display = ['id', 'prodOrdDate', 'prodOrdQuantity', 'prodOrdActive', 'prodOrdQuality', 'prodOrdDone', 'prodLineMember', 'prodOrdProduct',]

@admin.register(QualityControl)
class QualityControlAdmin(admin.ModelAdmin):
    list_display = ['id', 'qcArea', 'qcWorker',]

@admin.register(Product)
class ProductsAdmin(admin.ModelAdmin):
    list_display = ['id', 'productName', 'productDescription',]

@admin.register(Part)
class PartAdmin(admin.ModelAdmin):
    list_display = ['id', 'partName', 'partWeight', 'partColor']

@admin.register(PartsQuantity)
class PartsQuantityAdmin(admin.ModelAdmin):
    list_display = ['id', 'pQuantity', 'pProduct', 'pPart']

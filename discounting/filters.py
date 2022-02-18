import django_filters
from django_filters import DateFilter, CharFilter

from .models import *

class IndividualDiscountFilter(django_filters.FilterSet):
	
	name= CharFilter(field_name='name',lookup_expr='icontains')
	district=CharFilter(field_name='district',lookup_expr='icontains')
	over_all_discount_status=CharFilter(field_name='over_all_discount_status',lookup_expr='icontains')
	match_type=CharFilter(field_name='match_type',lookup_expr='icontains')

	class Meta:
		model = IndividulDiscount
		
		fields = ('name', 'district','over_all_discount_status','match_type')
		#exclude = ('name', 'district')
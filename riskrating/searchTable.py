from identification.models  import Individual
from table import Table
from table.columns import Column

class IndividualTable(Table):
    id = Column(field='id')
    name = Column(field='customer_name')
    class Meta:
        model = Individual
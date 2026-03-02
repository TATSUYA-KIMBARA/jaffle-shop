



select
    1
from FY26_TASK_FORCE_KIMBARA.DBT.customers

where not(lifetime_spend_pretax + lifetime_tax_paid = lifetime_spend)


# %%

import sqlite3
import pandas as pd

# %%

# Conectar ao banco de dados (ou criar se não existir)
conn = sqlite3.connect('olist.db')
cursor = conn.cursor()

csv_files = {
    'olist_customers_dataset': 'olist_customers_dataset.csv',
    'olist_orders_dataset': 'olist_orders_dataset.csv',
    'olist_order_items_dataset': 'olist_order_items_dataset.csv',
    'olist_order_payments_dataset': 'olist_order_payments_dataset.csv',
    'olist_order_reviews_dataset': 'olist_order_reviews_dataset.csv',
    'olist_products_dataset': 'olist_products_dataset.csv',
    'olist_sellers_dataset': 'olist_sellers_dataset.csv',
    'olist_geolocation_dataset': 'olist_geolocation_dataset.csv',
    'product_category_name_translation': 'product_category_name_translation.csv'
}

# Importar cada CSV para uma tabela no SQLite
for table_name, csv_file in csv_files.items():
    df = pd.read_csv(csv_file)
    df.to_sql(table_name, conn, if_exists='replace', index=False)

conn.close()
# %%

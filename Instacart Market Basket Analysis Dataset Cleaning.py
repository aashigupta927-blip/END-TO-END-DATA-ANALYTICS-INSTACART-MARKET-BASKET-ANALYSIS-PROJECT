import pandas as pd
# 1. Load LIMITED DATA 
orders = pd.read_csv("C:/Users/hp/Downloads/orders.csv")
order_products = pd.read_csv("C:/Users/hp/Downloads/order_products__prior.csv", 
                             nrows=200000)  # 👈 LIMIT rows
products = pd.read_csv("C:/Users/hp/Downloads/products.csv")
print("Limited Data Loaded ✅")

# 2. Clean
def clean_data(df):
    df = df.drop_duplicates()
    df.columns = df.columns.str.strip().str.lower()
    return df

orders = clean_data(orders)
order_products = clean_data(order_products)
products = clean_data(products)

# 3. Merge 
df = order_products.merge(products, on="product_id", how="left")
df = df.merge(orders, on="order_id", how="left")
print("Merge Successful ✅")

# 4. Save Sample
df.to_csv("C:/Users/hp/Downloads/instacart_sample_data.csv", index=False)
print("Saved Successfully ✅")

import pandas as pd
import os
from mlxtend.frequent_patterns import fpgrowth, association_rules
from sklearn.cluster import KMeans
from sklearn.preprocessing import StandardScaler

# 1. Downloads folder ka path set karna
downloads_path = os.path.join(os.path.expanduser("~"), "Downloads")

# 2. Data load karein
df = pd.read_csv("C:/Users/hp/Downloads/instacart_sample_data.csv")

import pandas as pd
import os
from pathlib import Path # Fixes: NameError
from mlxtend.frequent_patterns import apriori, association_rules

# --- Data Preparation ---
# Dummy data (Replace with your df)
data = {
    'order_id': [1, 1, 2, 2, 3, 3, 4, 4, 5, 5],
    'product_name': ['Milk', 'Bread', 'Milk', 'Bread', 'Milk', 'Eggs', 'Bread', 'Butter', 'Milk', 'Bread']
}
df = pd.DataFrame(data)

# --- Step 1: Matrix Preparation ---
basket = (df.groupby(['order_id', 'product_name'])['product_name']
          .count().unstack().reset_index().fillna(0)
          .set_index('order_id'))

# FIX 1: applymap ki jagah map use karein aur boolean (True/False) rakhein
# Isse mlxtend ki performance warning hat jayegi
basket_sets = basket.map(lambda x: True if x > 0 else False)

# --- Step 2: Apriori ---
# FIX 2: min_support ko thoda kam rakhein (e.g., 0.05 ya 0.1) 
# Agar data kam hai aur support high hai, to Empty DataFrame aata hai
frequent_itemsets = apriori(basket_sets, min_support=0.1, use_colnames=True)

# --- Step 3: Association Rules ---
rules = association_rules(frequent_itemsets, metric="lift", min_threshold=1)

# --- Step 4: Save to Downloads ---
# Fixes: Path is now defined
downloads_path = Path.home() / "Downloads"
file_name = "Instacart_Analysis_Results.csv"
full_save_path = downloads_path / file_name

# CSV mein save karna
rules.to_csv(full_save_path, index=False)

print(f"✅ Analysis Complete! File saved at: {full_save_path}")
print("\n--- Top 5 Rules ---")
print(rules.head())


# --- PART B: CUSTOMER SEGMENTATION (RFM) ---
rfm = df.groupby('user_id').agg({
    'order_number': 'max',      
    'order_id': 'nunique',     
    'product_id': 'count'      
}).reset_index()

rfm.columns = ['user_id', 'Recency', 'Frequency', 'Monetary']

scaler = StandardScaler()
rfm_scaled = scaler.fit_transform(rfm[['Recency', 'Frequency', 'Monetary']])

kmeans = KMeans(n_clusters=3, random_state=42, n_init=10)
rfm['Cluster'] = kmeans.fit_predict(rfm_scaled)

# --- PART C: SAVING TO DOWNLOADS FOLDER ---
# File names with full path
mba_file = os.path.join(downloads_path, "INSTACART_BASKET_ANALYSIS_CLEANED.csv")
rfm_file = os.path.join(downloads_path, "CUSTOMER_SEGMENTATION_RESULTS.csv")

# CSV Files save ho rahi hain
mba_results.to_csv(mba_file, index=False)
rfm.to_csv(rfm_file, index=False)

print(f"✅ Success! Files saved in Downloads folder:")
print(f"1. {mba_file}")
print(f"2. {rfm_file}")

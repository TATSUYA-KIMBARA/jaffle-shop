import streamlit as st
import streamlit.components.v1 as components

# 表示するHTMLのパス（リポジトリ内の相対パス）
html_file_path = 'target/static_index.html'

st.set_page_config(
    page_title="dbt Docs Viewer",
    layout="wide",
    initial_sidebar_state="collapsed"
)

# HTMLファイルを読み込んでStreamlit上で表示
try:
    with open(html_file_path, 'r', encoding='utf-8') as file:
        html_content = file.read()
    
    # heightは画面に合わせて調整してください
    components.html(html_content, height=1200, scrolling=True)
except FileNotFoundError:
    st.error(f"ファイルが見つかりません: {html_file_path}")
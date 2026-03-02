FY26_TASK_FORCE_KIMBARA.PUBLIC.STREAMLIT_TESTFY26_TASK_FORCE_KIMBARA.PUBLIC.STREAMLIT_TESTimport json
import streamlit as st
import streamlit.components.v1 as components

# HTMLファイルのパス
html_file_path = 'target/static_index.html'

st.set_page_config(
    page_title="dbt App",
    page_icon="🧊",
    layout="wide",
    initial_sidebar_state="expanded",
    menu_items={
        'Get Help': 'https://dev.classmethod.jp/',
        'Report a bug': "https://classmethod.jp/",
        'About': "Classmethod,Inc"
    }
)

st.markdown(
    r"""
    <style>
    .stDeployButton {
            visibility: hidden;
        }
    </style>
    """, unsafe_allow_html=True
)

# StreamlitでHTMLを表示
with open(html_file_path, 'r', encoding='utf-8') as file:
    html_content = file.read()
components.html(html_content, height=1024, scrolling=False)


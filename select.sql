select 'column '||cc.table_name||'.'||cc.column_name||' to boolean,' from grafana.information_schema.columns as cc where cc.data_type = 'boolean' and cc.table_schema = 'public';


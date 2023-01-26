select * from {{ ref('fct_trading_pnl') }}

{{ limit_dev_data('book_date', 2, 'year') }}

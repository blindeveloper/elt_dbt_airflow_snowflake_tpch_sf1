{% macro discounted_amount(extended_price, discount_percentage, scale=2) %}
    (
        CASE 
            WHEN {{ discount_percentage }} = 0 THEN 0
            ELSE ({{ extended_price }} / {{ discount_percentage }} + 0)
        END
    )::numeric(16, {{ scale }})
{% endmacro %}
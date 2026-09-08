-- Синтаксис ориентирован на SQLite.

-- 1. Количество продаж по магазинам
select
    store_id,
    count(*) as sales_count
from sales
group by store_id
order by sales_count desc;

-- 2. Продажи с максимальной суммой для каждого клиента
select
    s.id,
    s.customer_id,
    s.sale_total
from sales s
where s.sale_total = (
    select max(s2.sale_total)
    from sales s2
    where s2.customer_id = s.customer_id
);

-- 3. Клиенты, совершившие более 5 покупок
with customer_sales as (
    select
        customer_id,
        count(*) as purchases_count
    from sales
    group by customer_id
)
select
    customer_id,
    purchases_count
from customer_sales
where purchases_count > 5;

-- 4. Первая покупка клиента
with first_sale as (
    select
        customer_id,
        min(sale_datetime) as first_sale_datetime
    from sales
    group by customer_id
)
select
    s.customer_id,
    s.store_id,
    s.sale_datetime
from sales s
join first_sale f
    on f.customer_id = s.customer_id
   and f.first_sale_datetime = s.sale_datetime;

-- 5. Running total по магазину
select
    store_id,
    sale_datetime,
    sale_total,
    sum(sale_total) over (
        partition by store_id
        order by sale_datetime
        rows between unbounded preceding and current row
    ) as running_total
from sales;

-- 6. Отклонение покупки от среднего чека клиента
select
    customer_id,
    sale_total,
    round(avg(sale_total) over (
        partition by customer_id
    ), 2) as avg_customer_sale,
    round(
        sale_total - avg(sale_total) over (
            partition by customer_id
        ),
        2
    ) as diff_from_avg
from sales;

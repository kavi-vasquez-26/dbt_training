select
    id as payment_id
    , orderid as order_id
    , paymentmethod a payment_method
    , status as payment_status

    -- amount stored in cents converted to dollars
    , {{cents_to_dollars('amount', 2)}} as amount
    , created as created_created
    from {{ref('stripe', 'payment') }}
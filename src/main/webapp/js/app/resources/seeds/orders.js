[
    '{{repeat(100)}}',
    {
        "orderId": "{{integer(100,200)}}",
        "customerGuestInstanceId": "{{integer(1,100)}}",
        "serviceItemID": "{{integer(200,300)}}",
        "orderQty": "{{random(1,10)}}",
        "orderValue": "{{integer(500,1000)}}",
        "orderETA": "{{date(new Date(2014, 0, 1), new Date(), 'YYYY-MM-dd hh:00')}}",
        "orderStatus": "{{random(1,5)}}",
        "parentOrderId": "{{integer(1,100)}}"
    }
]
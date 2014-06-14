[
    '{{repeat(100)}}',
    {
        "customerId" : "{{index()}}",
        "customerName": "{{firstName()}}",
        "masterCustomerId" : "{{random(1,0)}}",
        "brandTypeId" : "",
        "streetAddress1": "{{integer(1000,2000)}} {{street()}}",
        "streetAddress2": "{{}}",
        "streetAddress2":"",
        "city" : "{{city()}}",
        "numberOfRooms" : "{{integer(0,10)}}",
        "customerTypeId" : "{{random(1,5)}}"
    }
]
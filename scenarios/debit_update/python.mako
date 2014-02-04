% if mode == 'definition':
balanced.Debit().save()
% elif mode == 'request':
import balanced

balanced.configure('ak-test-1kvvievk0Qqw5wQPsrlM9g7wQwNe62cyc')

debit = balanced.Debit.fetch('/debits/WD2Fd3jVcMZEWyXHtG3U1LRM')
debit.description = 'New description for debit'
debit.meta = {
  'facebook.id': '1234567890',
  'anykey': 'valuegoeshere',
}
debit.save()
% elif mode == 'response':
{
    "debits": [
        {
            "amount": 5000, 
            "appears_on_statement_as": "BAL*Statement text", 
            "created_at": "2014-01-27T22:57:05.511023Z", 
            "currency": "USD", 
            "description": "New description for debit", 
            "failure_reason": null, 
            "failure_reason_code": null, 
            "href": "/debits/WD2Fd3jVcMZEWyXHtG3U1LRM", 
            "id": "WD2Fd3jVcMZEWyXHtG3U1LRM", 
            "links": {
                "customer": null, 
                "dispute": null, 
                "order": null, 
                "source": "CC2uc8iPDjgyxOXHVtnZloyI"
            }, 
            "meta": {
                "anykey": "valuegoeshere", 
                "facebook.id": "1234567890"
            }, 
            "status": "succeeded", 
            "transaction_number": "W906-153-1439", 
            "updated_at": "2014-01-27T22:57:53.776191Z"
        }
    ], 
    "links": {
        "debits.customer": "/customers/{debits.customer}", 
        "debits.dispute": "/disputes/{debits.dispute}", 
        "debits.events": "/debits/{debits.id}/events", 
        "debits.order": "/orders/{debits.order}", 
        "debits.refunds": "/debits/{debits.id}/refunds", 
        "debits.source": "/resources/{debits.source}"
    }
}
% endif
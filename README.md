# Pesamoni Ruby library

The Pesamoni Pesaway gem provides integration access to Pesamoni services. You can view API features by clicking the link https://pesamoni.com/developers#features-intro.

## Installation

```ruby
gem install pesamoni_ruby
```

Or add to your Gemfile:

```ruby
gem 'pesamoni_ruby'
```

And then execute:

    $ bundle

## Quick Start Example

The SDK needs to be instantiated using your API username and API password, which you can get from your [Pesamoni business account](https://pesamoni.com/business/dash).

You can register a new Pesamoni business account [Here](https://pesamoni.com/businesses/sign_up) or Sign in [Here](https://pesamoni.com/businesses/sign_in)

```ruby
# Load the gem
require 'pesamoni_ruby'

# Setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: apipassword
  # Configure API key authorization: apiusername
  config.api_key['apiusername'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiusername'] = 'Bearer'
  config.api_key['apipassword'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apipassword'] = 'Bearer'  
end

api_instance = SwaggerClient::DefaultApi.new

method = 'method_example' # String | Enter a request method. To check for request methods <a href=''>click here</a>

```

### Accepting funds from mobile subscriber
```ruby
# you can either use method acreceive or acreceivekeac as explained below
# method acreceive
# This method enables you receive funds from a mobile subscriber in your registered native currency on the Pesamoni platform. If for instance your account is registered in currency UGX and you request money from a Kenyan number e.g 254712346789, a Pesamoni exchange rate will automatically be applied and money deposited into your Pesamoni wallet in your default currency
# method acreceivekeac
# You can have two native currencies on your Pesamoni account on request. If you would like to deposit funds from a mobile subscriber to your Kenyan Pesamoni wallet account then this is the method you use.
# example
method = 'acreceive'

opts = { 
  amount: 'amount_example', # String | Enter the amount you would like to request for. <p style=\"color:red\">This method applies for request methods <b>acreceive, acreceivekeac, acsend, acsendkeac, acsendbank, pesab2c, sendairtime, cardaccept</b></p>
  mobile: 'mobile_example', # String | Enter the mobile number you would like to execute the above method in format 256.... or 254...<p style=\"color:red\">This method applies for request methods <b>acreceive, acreceivekeac, acsend, acsendkeac, senderid, sendsms, sendairtime</b></p>
  reference: 'reference_example', # String | Enter your user generated transaction reference<p style=\"color:red\">This method applies for request methods <b>acreceive, acreceivekeac, acsend, acsendkeac, sendsms, transactionstatus, sendairtime, pesab2c, sendsms, cardaccept</b></p>
  genericmsg: 'genericmsg_example', # String | Enter your user generated generic message for the requested transaction<p style=\"color:red\">This method applies for request methods <b>acreceive, acreceivekeac, acsend, acsendkeac, sendsms, sendairtime, pesab2c, sendsms, cardaccept</b></p>
  token: 'token_example', # String | Enter your user generated token for the above mentioned method<p style=\"color:red\">This method applies for request methods <b>acreceive, acreceivekeac, acsend, acsendkeac, sendsms, sendairtime, pesab2c, sendsms, cardaccept</b></p>
}

begin
  result = api_instance.transactions_post(method, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DefaultApi->transactions_post: #{e}"
end
```

### Sending funds to a mobile subscriber

```ruby
# you can either use method acreceive or acreceivekeac as explained below
# acsend
# This method enables you send funds to a mobile subscriber in your registered native currency on the Pesamoni platform. If for instance your account is registered in currency UGX and you send money to a kenyan number e.g 254712346789, a Pesamoni exchange rate will automatically be applied and the equivalent exchange amount deducted from your Pesamoni wallet in your default currency
# acsendkeac
# You can have two native currencies on your Pesamoni account on request. If you would like to send funds from your Pesamoni wallet to a mobile subscriber from your Kenyan Pesamoni wallet account then this is the method you use.

method = 'acsend'

opts = { 
  amount: 'amount_example', # String | Enter the amount you would like to execute the above method for. <p style=\"color:red\">This method applies for request methods <b>acreceive, acreceivekeac, acsend, acsendkeac, acsendbank, pesab2c, sendairtime, cardaccept</b></p>
  mobile: 'mobile_example', # String | Enter the mobile number you would like to execute the above method in format 256.... or 254...<p style=\"color:red\">This method applies for request methods <b>acreceive, acreceivekeac, acsend, acsendkeac, senderid, sendsms, sendairtime</b></p>
  reference: 'reference_example', # String | Enter your user generated transaction reference<p style=\"color:red\">This method applies for request methods <b>acreceive, acreceivekeac, acsend, acsendkeac, sendsms, transactionstatus, sendairtime, pesab2c, sendsms, cardaccept</b></p>
  genericmsg: 'genericmsg_example', # String | Enter your user generated generic message for the requested transaction<p style=\"color:red\">This method applies for request methods <b>acreceive, acreceivekeac, acsend, acsendkeac, sendsms, sendairtime, pesab2c, sendsms, cardaccept</b></p>
  token: 'token_example', # String | Enter your user generated token for the above mentioned method<p style=\"color:red\">This method applies for request methods <b>acreceive, acreceivekeac, acsend, acsendkeac, sendsms, sendairtime, pesab2c, sendsms, cardaccept</b></p>
}
```

### Accepting Card Payments e.g VISA/MASTERCARD

```ruby

method = 'acsend'

opts = { 
  amount: 'amount_example', # String | Enter the amount you would like to request for. <p style=\"color:red\">This method applies for request methods <b>acreceive, acreceivekeac, acsend, acsendkeac, acsendbank, pesab2c, sendairtime, cardaccept</b></p>
  holdername: 'holdername_example', # String | Enter name of payer for Visa/MasterCard transactions<p style=\"color:red\">This method applies for request method <b>cardaccept</b></p>
  cardnumber: 'cardnumber_example', # String | Enter the Visa/MasterCard cardnumber<p style=\"color:red\">This method applies for request method <b>cardaccept</b></p>
  cvv: 'cvv_example', # String | Enter the Visa/MasterCard cvv<p style=\"color:red\">This method applies for request method <b>cardaccept</b></p>
  exp: 'exp_example', # String | Enter the Visa/MasterCard expiry date in the format MM/YYYY e.g 07/2030<p style=\"color:red\">This method applies for request method <b>cardaccept</b></p>
  currency: 'currency_example', # String | Enter the currency you intend to make the transaction for Visa/MasterCard based transactions<p style=\"color:red\">This method applies for request method <b>cardaccept</b></p>
  genericmsg: 'genericmsg_example', # String | Enter your user generated generic message for the requested transaction<p style=\"color:red\">This method applies for request methods <b>acreceive, acreceivekeac, acsend, acsendkeac, sendsms, sendairtime, pesab2c, sendsms, cardaccept</b></p>
  token: 'token_example', # String | Enter your user generated token for the above mentioned method<p style=\"color:red\">This method applies for request methods <b>acreceive, acreceivekeac, acsend, acsendkeac, sendsms, sendairtime, pesab2c, sendsms, cardaccept</b></p>
}

begin
  result = api_instance.transactions_post(method, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DefaultApi->transactions_post: #{e}"
end


```

### Bank transfers

```ruby
# you can either use method acsendbank or acsendbankeac as explained below
# acsendbank
# This method enables you send funds to a users bank account. A Pesamoni exchange rate will automatically be applied and the equivalent exchange amount deposited to your bank account dependent on your default currency.
# acsendbankeac
# You can have two native currencies on your Pesamoni account on request. If you would like to send funds from your Pesamoni wallet to a mobile subscriber from your Kenyan Pesamoni wallet account then this is the method you use.

method = 'acsendbank'

opts = { 
  amount: 'amount_example', # String | Enter the amount you would like to request for. <p style=\"color:red\">This method applies for request methods <b>acreceive, acreceivekeac, acsend, acsendkeac, acsendbank, pesab2c, sendairtime, cardaccept</b></p>
  currency: 'currency_example', # String | Enter the currency you intend to make the transaction for Visa/MasterCard based transactions<p style=\"color:red\">This method applies for request method <b>cardaccept</b></p>
  account: 'account_example', # String | Enter the Pesamoni account you would like to use for this transaction<p style=\"color:red\">This method applies for request method <b>paybills</b></p>
  reference: 'reference_example', # String | Enter your user generated transaction reference<p style=\"color:red\">This method applies for request methods <b>acreceive, acreceivekeac, acsend, acsendkeac, sendsms, transactionstatus, sendairtime, pesab2c, sendsms, cardaccept</b></p>
  genericmsg: 'genericmsg_example', # String | Enter your user generated generic message for the requested transaction<p style=\"color:red\">This method applies for request methods <b>acreceive, acreceivekeac, acsend, acsendkeac, sendsms, sendairtime, pesab2c, sendsms, cardaccept</b></p>
  token: 'token_example', # String | Enter your user generated token for the above mentioned method<p style=\"color:red\">This method applies for request methods <b>acreceive, acreceivekeac, acsend, acsendkeac, sendsms, sendairtime, pesab2c, sendsms, cardaccept</b></p>
}

begin
  result = api_instance.transactions_post(method, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DefaultApi->transactions_post: #{e}"
end
```

### Sending Airtime to a mobile subsriber

```ruby
method = 'sendairtime'

opts = { 
  amount: 'amount_example', # String | Enter the amount you would like to request for. <p style=\"color:red\">This method applies for request methods <b>acreceive, acreceivekeac, acsend, acsendkeac, acsendbank, pesab2c, sendairtime, cardaccept</b></p>
  mobile: 'mobile_example', # String | Enter the mobile number you would like to execute the above method in format 256.... or 254...<p style=\"color:red\">This method applies for request methods <b>acreceive, acreceivekeac, acsend, acsendkeac, senderid, sendsms, sendairtime</b></p>
  reference: 'reference_example', # String | Enter your user generated transaction reference<p style=\"color:red\">This method applies for request methods <b>acreceive, acreceivekeac, acsend, acsendkeac, sendsms, transactionstatus, sendairtime, pesab2c, sendsms, cardaccept</b></p>
  genericmsg: 'genericmsg_example', # String | Enter your user generated generic message for the requested transaction<p style=\"color:red\">This method applies for request methods <b>acreceive, acreceivekeac, acsend, acsendkeac, sendsms, sendairtime, pesab2c, sendsms, cardaccept</b></p>
  token: 'token_example', # String | Enter your user generated token for the above mentioned method<p style=\"color:red\">This method applies for request methods <b>acreceive, acreceivekeac, acsend, acsendkeac, sendsms, sendairtime, pesab2c, sendsms, cardaccept</b></p>
}

begin
  result = api_instance.transactions_post(method, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DefaultApi->transactions_post: #{e}"
end
```
### Sending to a Pesamoni users wallet

```ruby
method = 'pesab2c'

opts = { 
  amount: 'amount_example', # String | Enter the amount you would like to request for. <p style=\"color:red\">This method applies for request methods <b>acreceive, acreceivekeac, acsend, acsendkeac, acsendbank, pesab2c, sendairtime, cardaccept</b></p>
  account: 'account_example', # String | Enter the Pesamoni account you would like to use for this transaction<p style=\"color:red\">This method applies for request method <b>paybills</b></p>
  reference: 'reference_example', # String | Enter your user generated transaction reference<p style=\"color:red\">This method applies for request methods <b>acreceive, acreceivekeac, acsend, acsendkeac, sendsms, transactionstatus, sendairtime, pesab2c, sendsms, cardaccept</b></p>
  genericmsg: 'genericmsg_example', # String | Enter your user generated generic message for the requested transaction<p style=\"color:red\">This method applies for request methods <b>acreceive, acreceivekeac, acsend, acsendkeac, sendsms, sendairtime, pesab2c, sendsms, cardaccept</b></p>
  token: 'token_example', # String | Enter your user generated token for the above mentioned method<p style=\"color:red\">This method applies for request methods <b>acreceive, acreceivekeac, acsend, acsendkeac, sendsms, sendairtime, pesab2c, sendsms, cardaccept</b></p>
}

begin
  result = api_instance.transactions_post(method, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DefaultApi->transactions_post: #{e}"
end

```

### Accepting funds from a Pesamoni user

```ruby
method = 'pesac2b'

opts = { 
  amount: 'amount_example', # String | Enter the amount you would like to request for. <p style=\"color:red\">This method applies for request methods <b>acreceive, acreceivekeac, acsend, acsendkeac, acsendbank, pesab2c, sendairtime, cardaccept</b></p>
  account: 'account_example', # String | Enter the Pesamoni account you would like to use for this transaction<p style=\"color:red\">This method applies for request method <b>paybills</b></p>
  reference: 'reference_example', # String | Enter your user generated transaction reference<p style=\"color:red\">This method applies for request methods <b>acreceive, acreceivekeac, acsend, acsendkeac, sendsms, transactionstatus, sendairtime, pesab2c, sendsms, cardaccept</b></p>
  genericmsg: 'genericmsg_example', # String | Enter your user generated generic message for the requested transaction<p style=\"color:red\">This method applies for request methods <b>acreceive, acreceivekeac, acsend, acsendkeac, sendsms, sendairtime, pesab2c, sendsms, cardaccept</b></p>
  token: 'token_example', # String | Enter your user generated token for the above mentioned method<p style=\"color:red\">This method applies for request methods <b>acreceive, acreceivekeac, acsend, acsendkeac, sendsms, sendairtime, pesab2c, sendsms, cardaccept</b></p>
}

begin
  result = api_instance.transactions_post(method, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DefaultApi->transactions_post: #{e}"
end

```

### Paying Utility Bills

```ruby
method = 'paybills'

opts = { 
  amount: 'amount_example', # String | Enter the amount you would like to request for. <p style=\"color:red\">This method applies for request methods <b>acreceive, acreceivekeac, acsend, acsendkeac, acsendbank, pesab2c, sendairtime, cardaccept</b></p>
  mobile: 'mobile_example', # String | Enter the mobile number you would like to execute the above method in format 256.... or 254...<p style=\"color:red\">This method applies for request methods <b>acreceive, acreceivekeac, acsend, acsendkeac, senderid, sendsms, sendairtime</b></p>
  currency: 'currency_example', # String | Enter the currency you intend to make the transaction for Visa/MasterCard based transactions<p style=\"color:red\">This method applies for request method <b>cardaccept</b></p>
  reference: 'reference_example', # String | Enter your user generated transaction reference<p style=\"color:red\">This method applies for request methods <b>acreceive, acreceivekeac, acsend, acsendkeac, sendsms, transactionstatus, sendairtime, pesab2c, sendsms, cardaccept</b></p>
  genericmsg: 'genericmsg_example', # String | Enter your user generated generic message for the requested transaction<p style=\"color:red\">This method applies for request methods <b>acreceive, acreceivekeac, acsend, acsendkeac, sendsms, sendairtime, pesab2c, sendsms, cardaccept</b></p>
  token: 'token_example', # String | Enter your user generated token for the above mentioned method<p style=\"color:red\">This method applies for request methods <b>acreceive, acreceivekeac, acsend, acsendkeac, sendsms, sendairtime, pesab2c, sendsms, cardaccept</b></p>
  bouquet: 'bouquet_example', # String | Enter the bouquet or package you would like to pay for<p style=\"color:red\">This method applies for request methods <b>paybills</b></p>
  payoption: 'payoption_example', # String | Enter your prefered payment option<p style=\"color:red\">This method applies for request methods <b>paybills</b></p>
  meternumber: 'meternumber_example' # String | Enter the meter number for the intended payment<p style=\"color:red\">This method applies for request methods <b>paybills</b></p>
}

begin
  result = api_instance.transactions_post(method, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DefaultApi->transactions_post: #{e}"
end
```

### Checking transaction status

```ruby
method = 'transactionstatus'

opts = { 
  reference: 'reference_example', # String | Enter your user generated transaction reference<p style=\"color:red\">This method applies for request methods <b>acreceive, acreceivekeac, acsend, acsendkeac, sendsms, transactionstatus, sendairtime, pesab2c, sendsms, cardaccept</b></p>
}

begin
  result = api_instance.transactions_post(method, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DefaultApi->transactions_post: #{e}"
end
```

### Checking your Pesamoni Business Wallet Balance

```ruby
method = 'acbalance'

opts = { 
  # No parameters are required here
}
```

### Sending SMS to a mobile subscriber

```ruby

opts = { 
  mobile: 'mobile_example', # String | Enter the mobile number you would like to execute the above method in format 256.... or 254...<p style=\"color:red\">This method applies for request methods <b>acreceive, acreceivekeac, acsend, acsendkeac, senderid, sendsms, sendairtime</b></p>
  reference: 'reference_example', # String | Enter your user generated transaction reference<p style=\"color:red\">This method applies for request methods <b>acreceive, acreceivekeac, acsend, acsendkeac, sendsms, transactionstatus, sendairtime, pesab2c, sendsms, cardaccept</b></p>
  genericmsg: 'genericmsg_example', # String | Enter your user generated generic message for the requested transaction<p style=\"color:red\">This method applies for request methods <b>acreceive, acreceivekeac, acsend, acsendkeac, sendsms, sendairtime, pesab2c, sendsms, cardaccept</b></p>
  token: 'token_example', # String | Enter your user generated token for the above mentioned method<p style=\"color:red\">This method applies for request methods <b>acreceive, acreceivekeac, acsend, acsendkeac, sendsms, sendairtime, pesab2c, sendsms, cardaccept</b></p>
  message: 'message_example'
  # String | Enter your message <p style=\"color:red\">This method applies for request methods <b>sendsms</b></p>
}

begin
  result = api_instance.transactions_post(method, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DefaultApi->transactions_post: #{e}"
end
```

## Documentation for API Endpoints

All Endpoint URIs are relative to https://pesamoni.com/api/live/v1/transactions

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Pesamoni.

## License

The gem is available as open source under the terms of the [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0).


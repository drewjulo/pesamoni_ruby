require 'uri'

module Pesamoni
  class DefaultApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Below are parameters and their respective expected responses. In order to try out the service, simply click Try it out.
    # @param method Enter a request method. To check for request methods &lt;a href&#x3D;&#39;&#39;&gt;click here&lt;/a&gt;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :amount Enter the amount you would like to request for. &lt;p style&#x3D;\&quot;color:red\&quot;&gt;This method applies for request methods &lt;b&gt;acreceive, acreceivekeac, acsend, acsendkeac, acsendbank, pesab2c, sendairtime, cardaccept&lt;/b&gt;&lt;/p&gt;
    # @option opts [String] :mobile Enter the mobile number you would like to execute the above method in format 256.... or 254...&lt;p style&#x3D;\&quot;color:red\&quot;&gt;This method applies for request methods &lt;b&gt;acreceive, acreceivekeac, acsend, acsendkeac, senderid, sendsms, sendairtime&lt;/b&gt;&lt;/p&gt;
    # @option opts [String] :holdername Enter name of payer for Visa/MasterCard transactions&lt;p style&#x3D;\&quot;color:red\&quot;&gt;This method applies for request method &lt;b&gt;cardaccept&lt;/b&gt;&lt;/p&gt;
    # @option opts [String] :cardnumber Enter the Visa/MasterCard cardnumber&lt;p style&#x3D;\&quot;color:red\&quot;&gt;This method applies for request method &lt;b&gt;cardaccept&lt;/b&gt;&lt;/p&gt;
    # @option opts [String] :cvv Enter the Visa/MasterCard cvv&lt;p style&#x3D;\&quot;color:red\&quot;&gt;This method applies for request method &lt;b&gt;cardaccept&lt;/b&gt;&lt;/p&gt;
    # @option opts [String] :exp Enter the Visa/MasterCard expiry date in the format MM/YYYY e.g 07/2030&lt;p style&#x3D;\&quot;color:red\&quot;&gt;This method applies for request method &lt;b&gt;cardaccept&lt;/b&gt;&lt;/p&gt;
    # @option opts [String] :currency Enter the currency you intend to make the transaction for Visa/MasterCard based transactions&lt;p style&#x3D;\&quot;color:red\&quot;&gt;This method applies for request method &lt;b&gt;cardaccept&lt;/b&gt;&lt;/p&gt;
    # @option opts [String] :account Enter the Pesamoni account you would like to use for this transaction&lt;p style&#x3D;\&quot;color:red\&quot;&gt;This method applies for request method &lt;b&gt;paybills&lt;/b&gt;&lt;/p&gt;
    # @option opts [String] :reference Enter your user generated transaction reference&lt;p style&#x3D;\&quot;color:red\&quot;&gt;This method applies for request methods &lt;b&gt;acreceive, acreceivekeac, acsend, acsendkeac, sendsms, transactionstatus, sendairtime, pesab2c, sendsms, cardaccept&lt;/b&gt;&lt;/p&gt;
    # @option opts [String] :genericmsg Enter your user generated generic message for the requested transaction&lt;p style&#x3D;\&quot;color:red\&quot;&gt;This method applies for request methods &lt;b&gt;acreceive, acreceivekeac, acsend, acsendkeac, sendsms, sendairtime, pesab2c, sendsms, cardaccept&lt;/b&gt;&lt;/p&gt;
    # @option opts [String] :token Enter your user generated token for the above mentioned method&lt;p style&#x3D;\&quot;color:red\&quot;&gt;This method applies for request methods &lt;b&gt;acreceive, acreceivekeac, acsend, acsendkeac, sendsms, sendairtime, pesab2c, sendsms, cardaccept&lt;/b&gt;&lt;/p&gt;
    # @option opts [String] :bouquet Enter the bouquet or package you would like to pay for&lt;p style&#x3D;\&quot;color:red\&quot;&gt;This method applies for request methods &lt;b&gt;paybills&lt;/b&gt;&lt;/p&gt;
    # @option opts [String] :payoption Enter your prefered payment option&lt;p style&#x3D;\&quot;color:red\&quot;&gt;This method applies for request methods &lt;b&gt;paybills&lt;/b&gt;&lt;/p&gt;
    # @option opts [String] :meternumber Enter the meter number for the intended payment&lt;p style&#x3D;\&quot;color:red\&quot;&gt;This method applies for request methods &lt;b&gt;paybills&lt;/b&gt;&lt;/p&gt;
    # @return [InlineResponse200]
    def transactions_post(method, opts = {})
      data, _status_code, _headers = transactions_post_with_http_info(method, opts)
      data
    end

    # Below are parameters and their respective expected responses. In order to try out the service, simply click Try it out.
    # @param method Enter a request method. To check for request methods &lt;a href&#x3D;&#39;&#39;&gt;click here&lt;/a&gt;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :amount Enter the amount you would like to request for. &lt;p style&#x3D;\&quot;color:red\&quot;&gt;This method applies for request methods &lt;b&gt;acreceive, acreceivekeac, acsend, acsendkeac, acsendbank, pesab2c, sendairtime, cardaccept&lt;/b&gt;&lt;/p&gt;
    # @option opts [String] :mobile Enter the mobile number you would like to execute the above method in format 256.... or 254...&lt;p style&#x3D;\&quot;color:red\&quot;&gt;This method applies for request methods &lt;b&gt;acreceive, acreceivekeac, acsend, acsendkeac, senderid, sendsms, sendairtime&lt;/b&gt;&lt;/p&gt;
    # @option opts [String] :holdername Enter name of payer for Visa/MasterCard transactions&lt;p style&#x3D;\&quot;color:red\&quot;&gt;This method applies for request method &lt;b&gt;cardaccept&lt;/b&gt;&lt;/p&gt;
    # @option opts [String] :cardnumber Enter the Visa/MasterCard cardnumber&lt;p style&#x3D;\&quot;color:red\&quot;&gt;This method applies for request method &lt;b&gt;cardaccept&lt;/b&gt;&lt;/p&gt;
    # @option opts [String] :cvv Enter the Visa/MasterCard cvv&lt;p style&#x3D;\&quot;color:red\&quot;&gt;This method applies for request method &lt;b&gt;cardaccept&lt;/b&gt;&lt;/p&gt;
    # @option opts [String] :exp Enter the Visa/MasterCard expiry date in the format MM/YYYY e.g 07/2030&lt;p style&#x3D;\&quot;color:red\&quot;&gt;This method applies for request method &lt;b&gt;cardaccept&lt;/b&gt;&lt;/p&gt;
    # @option opts [String] :currency Enter the currency you intend to make the transaction for Visa/MasterCard based transactions&lt;p style&#x3D;\&quot;color:red\&quot;&gt;This method applies for request method &lt;b&gt;cardaccept&lt;/b&gt;&lt;/p&gt;
    # @option opts [String] :account Enter the Pesamoni account you would like to use for this transaction&lt;p style&#x3D;\&quot;color:red\&quot;&gt;This method applies for request method &lt;b&gt;paybills&lt;/b&gt;&lt;/p&gt;
    # @option opts [String] :reference Enter your user generated transaction reference&lt;p style&#x3D;\&quot;color:red\&quot;&gt;This method applies for request methods &lt;b&gt;acreceive, acreceivekeac, acsend, acsendkeac, sendsms, transactionstatus, sendairtime, pesab2c, sendsms, cardaccept&lt;/b&gt;&lt;/p&gt;
    # @option opts [String] :genericmsg Enter your user generated generic message for the requested transaction&lt;p style&#x3D;\&quot;color:red\&quot;&gt;This method applies for request methods &lt;b&gt;acreceive, acreceivekeac, acsend, acsendkeac, sendsms, sendairtime, pesab2c, sendsms, cardaccept&lt;/b&gt;&lt;/p&gt;
    # @option opts [String] :token Enter your user generated token for the above mentioned method&lt;p style&#x3D;\&quot;color:red\&quot;&gt;This method applies for request methods &lt;b&gt;acreceive, acreceivekeac, acsend, acsendkeac, sendsms, sendairtime, pesab2c, sendsms, cardaccept&lt;/b&gt;&lt;/p&gt;
    # @option opts [String] :bouquet Enter the bouquet or package you would like to pay for&lt;p style&#x3D;\&quot;color:red\&quot;&gt;This method applies for request methods &lt;b&gt;paybills&lt;/b&gt;&lt;/p&gt;
    # @option opts [String] :payoption Enter your prefered payment option&lt;p style&#x3D;\&quot;color:red\&quot;&gt;This method applies for request methods &lt;b&gt;paybills&lt;/b&gt;&lt;/p&gt;
    # @option opts [String] :meternumber Enter the meter number for the intended payment&lt;p style&#x3D;\&quot;color:red\&quot;&gt;This method applies for request methods &lt;b&gt;paybills&lt;/b&gt;&lt;/p&gt;
    # @return [Array<(InlineResponse200, Fixnum, Hash)>] InlineResponse200 data, response status code and response headers
    def transactions_post_with_http_info(method, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.transactions_post ...'
      end
      # verify the required parameter 'method' is set
      if @api_client.config.client_side_validation && method.nil?
        fail ArgumentError, "Missing the required parameter 'method' when calling DefaultApi.transactions_post"
      end
      # resource path
      local_var_path = '/transactions'

      # query parameters
      query_params = {}
      query_params[:'method'] = method
      query_params[:'amount'] = opts[:'amount'] if !opts[:'amount'].nil?
      query_params[:'mobile'] = opts[:'mobile'] if !opts[:'mobile'].nil?
      query_params[:'holdername'] = opts[:'holdername'] if !opts[:'holdername'].nil?
      query_params[:'cardnumber'] = opts[:'cardnumber'] if !opts[:'cardnumber'].nil?
      query_params[:'cvv'] = opts[:'cvv'] if !opts[:'cvv'].nil?
      query_params[:'exp'] = opts[:'exp'] if !opts[:'exp'].nil?
      query_params[:'currency'] = opts[:'currency'] if !opts[:'currency'].nil?
      query_params[:'account'] = opts[:'account'] if !opts[:'account'].nil?
      query_params[:'reference'] = opts[:'reference'] if !opts[:'reference'].nil?
      query_params[:'genericmsg'] = opts[:'genericmsg'] if !opts[:'genericmsg'].nil?
      query_params[:'token'] = opts[:'token'] if !opts[:'token'].nil?
      query_params[:'bouquet'] = opts[:'bouquet'] if !opts[:'bouquet'].nil?
      query_params[:'payoption'] = opts[:'payoption'] if !opts[:'payoption'].nil?
      query_params[:'meternumber'] = opts[:'meternumber'] if !opts[:'meternumber'].nil?

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['apipassword', 'apiusername']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse200')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#transactions_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

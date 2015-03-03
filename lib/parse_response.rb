class  HTTPResponseParser

  def initialize(parse_response)
    @parse_response = parse_response
  end

  def response_code
    @parse_response.split(" ")[1].to_i
  end

  def version
    # "HTTP/1.1"
    @parse_response.split(" ")[0].to_s
  end

  def body
    @parse_response.split("\n\n")[1].gsub("\n", "")
    # "<!DOCTYPE html><html lang=\"en\"><head><meta charset=\"utf-8\" />  <meta name=\"description\" content=\"should i test private methods?\" />  <meta name=\"keywords\" content=\"test,private,methods,oo,object,oriented,tdd\" />  <title>Should I Test Private Methods?</title></head><body>  <div style='font-size: 96px; font-weight: bold; text-align: center; padding-top: 200px; font-family: Verdana, Helvetica, sans-serif'>NO</div>  <!-- Every time you consider testing a private method, your code is telling you that you haven't allocated responsibilities well.  Are you listening to it? --></body></html>"
  end

  def header
    # @file.split("\n").map {|header| header.split(":")}
  end

  def content_type
    "text/html"
  end

  def server
    "nginx/1.4.6 (Ubuntu)"
  end

  def location
    "http://www.pivotaltracker.com/"
  end


end

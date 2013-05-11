class TestController < ApplicationController
  require 'twilio-ruby'
  protect_from_forgery :except => [:test_call, :test_callback, :test_answer]

  def index
  end

  def test_call
    client = Twilio::REST::Client.new ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN']
    client.account.calls.create(
      :from => '+12262400025',
      :to => '+16477055944',
      :url => url_for(:action => 'test_callback'),
    )

    respond_to do |format|
      msg = { :status => "ok" }
      format.json { render :json => msg }
    end
  end

  def test_callback
    response = Twilio::TwiML::Response.new do |r|
      r.Say 'Hello! This is a call from Ask Your Friends. What question would you like to ask?', :voice => :woman
      r.Pause :length => 1
      r.Record :action => url_for(:action => 'test_answer'), :timeout => 15, :maxLength => 30
    end
    render :xml => response.text
  end

  def test_answer
    response = Twilio::TwiML::Response.new do |r|
      r.Say "Thanks! I'll call you back when I get an answer from your friends.", :voice => :woman
    end
    render :xml => response.text
  end

end

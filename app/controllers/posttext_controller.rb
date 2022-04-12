# frozen_string_literal: true

puts 'ZZZZZZZZ: PosttextController'

class PosttextController < ApplicationController
  before_action :authenticate_user!
  def posttext
    print 'XXXXXXXXX: post ', params['textmsg'], '\n'
    if params['textmsg']
      if params['textmsg'].length > 160
        redirect_to '/posttext/?failed=1'
        return
      end
      File.open('/usr/bin/python3', 'r') do |file|
      end
      File.open('/tmp/textmsg', 'w') do |file|
        file.write(params['textmsg'])
      end
      File.open('/tmp/cookie', 'w') do |file|
        file.write(cookies['username'])
      end
      # puts %x(pwd)
      res = system('python3 ./send_text.py /tmp/textmsg /tmp/cookie')
      redirect_to '/posttext'
    end
  end
end

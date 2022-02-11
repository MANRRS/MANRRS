#!/usr/bin/env python3
import smtplib
import time
import sys
import os
import re 

def send_email(receivers:[str],text:str):
    assert type(text)==str
    assert type(receivers[0])==str
    assert len(text)<160
    with smtplib.SMTP_SSL("smtp.gmail.com",465) as smtp:
        sender="manrrs.outreach@gmail.com"
        smtp.login(sender,"shbchjsacb7382y2%")
        msg="Subject: _ \n\n"+text
        smtp.sendmail(sender,receivers,msg)

complete_carrier_domains=["sms.alltelwireless.com","txt.att.net","sms.myboostmobile.com","mms.cricketwireless.net","mymetropcs.com","text.republicwireless.com","messaging.sprintpcs.com","tmomail.net","email.uscc.net","vtext.com","vmobl.com"]
carrier_domains=["tmomail.net","txt.att.net","vtext.com"]


#works on my phone ["mymetropcs.com","tmomail.net","vmobl.com"]

def send_text(numbers:[str],text:str):
    assert type(text)==str
    assert type(numbers[0])==str
    email_addrs=[]
    for num in numbers:
        for cd in carrier_domains:
            email_addrs.append(num+"@"+cd)
    print(email_addrs)
    send_email(email_addrs,text)




#what is an sms-gateway?
#area_code-central_office_code-station_number
#160-character limit


"""
Alltel                  sms.alltelwireless.com  
AT&T                    txt.att.net 
Boost Mobile            sms.myboostmobile.com   
Cricket Wireless        mms.cricketwireless.net 
MetroPCS                mymetropcs.com  
Republic Wireless       text.republicwireless.com   
Sprint                  messaging.sprintpcs.com 
T-Mobile                tmomail.net
U.S. Cellular           email.uscc.net
Verizon Wireless        vtext.com   
Virgin Mobile           vmobl.com   
""" 


def sql_get_numbers():
    query="select number from students"
    db_usr="test_app"
    db_pwd="test_password"
    db_name="test_excel_development"
    #setting up a .pgpass file to prevent psql from pompting us for a password
    os.system('echo \'localhost:*:'+db_name+':'+db_usr+':'+db_pwd+'\' > ~/.pgpass')
    #psql expects .pgpass to have the following permissions
    os.system('chmod 0600 ~/.pgpass')
    #pipe the query into pql and write the result to a temporary file
    os.system('echo \''+query+';\' | psql -h localhost -U '+db_usr+' '+db_name+' > tmp_query')
    with open("tmp_query") as fd:
        raw=fd.read()
        #extract 10 digit numbers and put them in an array
        return re.findall(r'\b\d\d\d\d\d\d\d\d\d\d\b',raw)
        
#only 10 carriers to worry about
def main():
    assert len(sys.argv)==2
    msg=""
    with open(sys.argv[1]) as fd:
        msg=fd.read()

    if len(msg)==0:
        return
    send_text(sql_get_numbers(),msg)
    # print(sql_get_numbers())


if __name__ == '__main__':
    main()





















#
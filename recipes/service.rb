#These are example commands that can be run
#Use the hprest resource followed by a command
#
#Example 1:
#hprest 'login 10.0.0.100 -u admin -p password'
#
#Example 2:
#hprest 'logout'

hprest 'login'
hprest 'types'
hprest 'select HpBios.'
hprest 'set AdminName="John Doe"'
hprest 'get AdminName'
hprest 'commit'
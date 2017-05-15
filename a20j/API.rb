require 'HTTParty'
a = HTTParty.get("http://codeforces.com/api/user.status?handle=karthickpdy&from=1&count=1000")
accepted = a["result"].select{|x| x["verdict"]== "OK"}
accepted.count
"http://codeforces.com/contest/#{a['problem']['contestId']}/problem/#{a['problem']['index']}"
"http://codeforces.com/contest/#{a['problem']['contestId']}/submission/#{a['id']}"


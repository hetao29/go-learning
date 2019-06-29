module main

go 1.12

replace (
	controllers v1.0.0 => ./controllers
	golang.org/x/crypto v0.0.0-20181127143415-eb0de9b17e85 => github.com/golang/crypto v0.0.0-20181127143415-eb0de9b17e85
	golang.org/x/net v0.0.0-20181114220301-adae6a3d119a => github.com/golang/net v0.0.0-20181114220301-adae6a3d119a
	user v1.0.0 => ./models/user
)

require github.com/astaxie/beego v1.11.1

require user v1.0.0 // indirect

require controllers v1.0.0

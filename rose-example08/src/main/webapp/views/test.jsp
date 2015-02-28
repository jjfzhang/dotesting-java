<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 
  <meta charset="utf-8">  <meta http-equiv="X-UA-Compatible" content="IE=edge">  <meta name="viewport" content="width=device-width, initial-scale=1">
 -->
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Bootstrap基础模板</title>
  <!-- Bootstrap --> 
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <!-- 以下2个插件是用于在IE8支持HTML5元素和媒体查询的，如果不用可移除 -->
  <!-- 注意：Respond.js不支持file://方式的访问 -->
  <!-- [if lt IE 9]>
  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
  <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
  <![endif] -->
</head>
<body>
  <h1>Hello, world!<small>你好，</small><strong>小米！</strong><em>您好，</em><cite>中国！</cite></h1>
  <span class="h1">Bootstrap权威指南</span><br />
  <p class="text-left">JavaScript编程精解</p><p class="text-center">JavaScript设计模式</p><p class="text-right">JavaScript启示录</p>
  <p class="lead">突出显示段落，增大字体大小、粗细和行间距</p><p class="text-justify">Backbone应用开发实战</p>
  <abbr title="JavaScript设计模式是一本专门讲解设计模式的专业书籍">JavaScript设计模式</abbr>
  <abbr title="HyperText Markup Language" class=" initialism">HTML</abbr>
  
  <blockquote class="pull-right">  <p>不愤不启，不悱不发。举一隅，不以三隅反，则吾不复也。</p>  <small>出自 <cite title="论语•述而">论语</cite></small></blockquote>
  
  <address>  <strong>Twitter, Inc.</strong><br>  795 Folsom Ave, Suite 600<br>  San Francisco, CA 94107<br>  <abbr title="Phone">P:</abbr>  (123) 456-7890</address><address>  <strong>汤姆大叔</strong><br>  <a href="mailto:#">tomxu@outlook.com</a></address>
  <ul class="list-unstyled"><li>1...</li><ul><li>1...</li><li>2...</li><li>3...</li></ul><li>2...</li><li>3...</li></ul>
  <ol><li>1...</li><li>2...</li><li>3...</li></ol>
  <ol class="list-inline"><li>1...</li><li>2...</li><li>3...</li></ol>
  <dl class="dl-horizontal"><dt>1.dt...</dt><dd>1.dd...</dd><dt>2.dt...</dt>  <dd>2.dd...</dd></dl>
  <code>return "test";</code><kbd>return "test";</kbd>
  <pre class="pre-scrollable">
    public String index(Invocation inv) {
        return "test";
    }
  </pre>

  <div class="container">
    <div class="row">
      <div class="col-md-8">.col-md-8</div>
      <div class="col-md-4">.col-md-4</div>
    </div>
    <div class="row">
      <div class="col-md-4">.col-md-4</div>
      <div class="col-md-4 col-md-offset-4">.col-md-4 .col-md-offset-4</div>
    </div>
    <div class="row">
      <div class="col-md-9">    Level 1: .col-md-9
        <div class="row">
          <div class="col-md-6">Level 2: .col-md-6</div>
          <div class="col-md-6">Level 2: .col-md-6 </div>
        </div>
      </div>
      <div class="col-md-3"></div>
    </div>
    <div class="row">
      <div class="col-md-9 col-md-push-3">.col-md-9</div>
      <div class="col-md-3 col-md-pull-9">.col-md-3</div>
    </div>
  </div>
  <button type="button" class="btn btn-primary">Primary</button>
  <button type="button" class="btn btn-success">Success</button>
  <div class="alert alert-warning">...</div>
  <div class="alert alert-danger">...</div>
  
  <button type="button" class="btn btn-xs">Primary</button>
  <button type="button" class="btn btn-lg">Success</button>
  <div class="well well-lg">...</div>
  <div class="well well-sm">...</div>
  
  <div class="progress progress-striped active">
    <div class="progress-bar" style="width: 45%">
      <span class="sr-only">45% Complete</span>
    </div>
  </div>
  
  <div class="alert">
    <button type="button" class="close" data-dismiss="alert">×</button>
    <strong>警告!</strong> 你输入的项目不合法！
  </div>

  <form class="form-inline">
    <div class="form-group">
      <input type="text" class="form-control" placeholder="请输入你的用户名">
    </div>
      <div class="form-group">
        <input type="text" class="form-control" placeholder="请输入你的密码">
    </div>
    <div class="checkbox">
      <label><input type="checkbox">记住密码</label>
    </div>
    <div class="form-group">
      <label>用户名：</label>
    </div>
    <div class="form-group">
      <input type="text" class="form-control" placeholder="请输入你的用户名">
    </div>
    <button type="submit" class="btn btn-default">登录</button>
  </form>
  <form class="form-horizontal" role="form">
    <div class="form-group">
      <label for="account" class="col-sm-2 control-label">用户名</label>
      <div class="col-sm-10">
        <input type="email" class="form-control" id=" account " placeholder="请输入你的用户名">
      </div>
    </div>
    <div class="form-group">
      <label for=" password " class="col-sm-2 control-label">密码</label>
      <div class="col-sm-10">
        <input type="password" class="form-control" id="password" placeholder="请输入你的密码">
      </div>
    </div>
    <div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
        <div class="checkbox"><label><input type="checkbox">记住密码</label></div>
      </div>
    </div>
    <div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">登录</button>
      </div>
     </div>
  </form>
  <select>  <option>1</option></select><select multiple="multiple">  <option>1</option>  <option>2</option></select>
  <textarea class="form-control" rows="3"></textarea>
  <div class="checkbox"><label><input type="checkbox" value="">是否想赚大钱？</label><label><input type="checkbox" value="">是否想赚大钱？</label></div>
  <div class="radio">  <label><input type="radio" name="optionsRadios" value="female" checked>请确保，您喜欢女人？</label></div><div class="radio">  <label><input type="radio" name="optionsRadios" value="male">请确保，您喜欢男人？</label></div>
  <label class="checkbox-inline">  <input type="checkbox" value="体育" id="inlineCheckbox1">体育</label><label class="checkbox-inline">  <input type="checkbox" value="音乐" id=" inlineCheckbox2">音乐</label>…<label class="radio-inline">  <input type="radio" value="未知" id="Radio3">未知</label>
  <p class="text-muted">JavaScript编程精解</p>
  <p class="text-primary">JavaScript设计模式</p>
  <p class="text-success">JavaScript启示录</p>
  <p class="text-info">Backbone应用开发实战</p>
  <p class="text-warning">深入理解Bootstrap3</p>
  <p class="text-danger">编写可测试的JavaScript</p>
  <div class="btn-toolbar">  <div class="btn-group">    <a class="btn btn-default" href="#"><span class="glyphicon glyphicon-align-left"></span></a>    <a class="btn btn-default" href="#"><span class="glyphicon glyphicon-align-center"></span></a>    <a class="btn btn-default" href="#"><span class="glyphicon glyphicon-align-right"></span></a>    <a class="btn btn-default" href="#"><span class="glyphicon glyphicon-align-justify"></span></a>  </div></div>
  <div class="btn-group">  <a class="btn btn-default btn-primary" href="#"><span class="glyphicon glyphicon-user"></span>User</a>  <a class="btn btn-default btn-primary dropdown-toggle" data-toggle=" href="#"><span class="caret"></span></a>  <ul class="dropdown-menu">    <li><a href="#"><span class="glyphicon glyphicon-pencil"></span>Edit</a></li>    <li><a href="#"><span class="glyphicon glyphicon-trash"></span>Delete</a></li>    <li><a href="#"><span class="glyphicon glyphicon-ban-circle"></span>Ban</a></li>    <li class="divider"></li>    <li><a href="#">Make admin</a></li>  </ul></div>
  <div class="control-group">  <div class="controls">    <div class=" input-group">      <span class=" input-group-addon">        <span class="glyphicon glyphicon-envelope"></span>      </span>      <input class="col col-lg-2 form-control" id=" inputIcon" type="text">    </div>  </div></div>
  <span class="glyphicon glyphicon-glass"></span><span class="glyphicon">&#xe001</span>
  
  <div class="dropdown">  <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu">    <li><a tabindex="-1" href="#">Action</a></li>    <li><a tabindex="-1" href="#">Another action</a></li>    <li><a tabindex="-1" href="#">Something else here</a></li>    <li class="divider"></li>    <li><a tabindex="-1" href="#">Separated link</a></li>  </ul></div>
  <div class="btn-group">  <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown">    Success <span class="caret"></span>  </button>  <ul class="dropdown-menu">    <li><a href="#">Action</a></li>    <li><a href="#">Another action</a></li>    <li><a href="#">Something else here</a></li>    <li class="divider"></li>    <li><a href="#">Separated link</a></li>  </ul></div>
  
  
  <ul class="nav nav-tabs" id="myTab">
    <li class="active"><a data-toggle="tab" href="#home">首页</a></li>
    <li class=""><a data-toggle="tab" href="#profile">个人资料</a></li>
    <li class="dropdown">
      <!-- 单击"我的书籍"时，弹出下拉菜单 -->
      <a data-toggle="dropdown" href="#" class="dropdown-toggle">我的书籍    <b class="caret"></b></a>
      <ul class="dropdown-menu">
          <li><a data-toggle="tab" href="#dropdown1">JavaScript编程精解</a></li>
          <li><a data-toggle="tab" href="#dropdown2">JavaScript设计模式</a></li>
          <li><a data-toggle="tab" href="#dropdown3">JavaScript启示录</a></li>
          <li><a data-toggle="tab" href="#dropdown4">深入理解Bootstrap</a></li>
      </ul>
    </li>
  </ul>
  <div class="tab-content" id="myTabContent">
    <div id="home" class="tab-pane fade active in"><p>单击"首页"时显示该区域</p></div>
    <div id="profile" class="tab-pane fade"><p>单击"个人资料"时显示该区域</p></div>
    <div id="dropdown1" class="tab-pane fade"><p>单击"JavaScript编程精解"时显示该区域</p></div>
    <div id="dropdown2" class="tab-pane fade"><p>单击"JavaScript设计模式"时显示该区域</p></div>
    <div id="dropdown3" class="tab-pane fade"><p>单击"JavaScript启示录"时显示该区域</p></div>
    <div id="dropdown4" class="tab-pane fade"> <p>单击"深入理解Bootstrap3"时显示该区域</p></div>
  </div>

  <!-- 如果要使用Bootstrap的JS插件，则必须引入jQuery -->
  <script src="https://code.jquery.com/jquery.js"></script>
  <!-- Bootstrap的JS插件 -->
  <script src="js/bootstrap.min.js"></script>
</body>
</html>
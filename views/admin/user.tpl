{% extends './../layout.tpl' %}

{% block content %}
<link rel="stylesheet" href="/stylesheets/user.css"/>


<div class="wrapper">
    <header class="page-header">
      <img class="page-logo" src="https://files1.porsche.com/filestore/image/multimedia/none/875d5e3d-6763-47fe-bc52-809142d53274/svg/d4c766d7-7761-11e7-99c7-0019999cd470/porsche-svg.svg">
      <div class="page-text">Porsche 汽车管理销售系统</div>
      <div class="pahe-user">林熙 <span class="pahe-user-tuichu">退出</span></div>
    </header>
    <div class="page-body">
      <div class="page-aside">
        <nav class="page-nav">
          <ul>
            <li class="page-nav-li">
              <a class="page-nav-item" href="/admin/user">人员管理</a>
            </li>
            <li class="page-nav-li">
              <a class="page-nav-item" href="/admin/clue">线索管理</a>
            </li>
          </ul>
        </nav>
      </div>
    <!-- 修改区 -->
      <div class="page-content">
<!-- 主要修改区 -->
        <div class="content-personnel">
          <div class="content-title">人员管理</div>
          <div class="content-control">
            <a href="/admin/user/create">新增人员 >></a>
          </div>
        </div>
        <div class="content-table">
          <table class="table-container">
            <tr>
              <th>姓名</th>
              <th>电话</th>
              <th>角色</th>
              <th>创建时间</th>
              <th>操作</th>
            </tr>
            <tr>
              <td>周杰伦</td>
              <td>13511111111</td>
              <td>管理员</td>
              <td>2019-4-1</td>
              <td><a href="/admin/user/{{val.id}}/edit">编辑</a></td>
            </tr>
            <tr>
              <td>李易峰</td>
              <td>13522222222</td>
              <td>管理员</td>
              <td>2019-4-1</td>
              <td><a href="/admin/user/2/edit">编辑</a></td>
            </tr>
            <tr>
              <td>陈奕迅</td>
              <td>13533333333</td>
              <td>管理员</td>
              <td>2019-4-1</td>
               <td><a href="/admin/user/{{val.id}}/edit">编辑</a></td>
            </tr>
          </table>
        </div>
<!-- 主要修改区 -->
      </div>
<!-- 修改区 -->
    </div>
    <footer class="page-footer">Copyright © 2019 极客学院体验技术部出品</footer>
  </div>

{% endblock %}
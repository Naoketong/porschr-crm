{% extends './../layout.tpl' %}

{% block content %}
<link rel="stylesheet" href="/stylesheets/user-edit.css"/>


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
        <div class="content-redact" style="height: 80px;padding: 20px;">
        	<div class="content-title">编辑人员</div>
    			<div class="content-control">
    			  <a href="/admin/user">返回用户列表 >></a>
    			</div>
        </div>
    		<div class="form-section">
    		  <div class="form-item">
    		    <input id="userName" type="text" class="form-input" placeholder="姓名"/>
    		  </div>
    		  <div class="form-item">
    		    <input id="userPhone" type="text" class="form-input" placeholder="电话"/>
    		  </div>
    		  <div class="form-item">
    		    <input id="userPassword" type="text" class="form-input" placeholder="密码"/>
    		  </div>
    		  <div class="form-item">
    		    <select id="userRole" class="form-input">
    		      <option value="0">请选择角色</option>
    		      <option value="1" {% if user.role == 1 %} selected {% endif %}>管理员</option>
    		      <option value="2" {% if user.role == 2 %} selected {% endif %}>销售</option>
             
    		    </select>
    		  </div>
    		  <div class="form-item">
            <input id="userId"  type="text" hidden value="{{user.id}}" />
    		    <button id="userSubmit" class="form-button">保存</button>
    		  </div>
    		</div>
<!-- 主要修改区 -->
      </div>
<!-- 修改区 -->
    </div>
    <footer class="page-footer">Copyright © 2019 极客学院体验技术部出品</footer>
  </div>

{% endblock %}

{% block js %}
<script src="/javascripts/jquery-3.3.1.min.js"></script>
<script src="/javascripts/user_edit.js"></script>
{% endblock %}
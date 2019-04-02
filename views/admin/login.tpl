{% extends './../layout.tpl' %}

{% block css %}
<link rel="stylesheet" href="/stylesheets/login.css"/>
{% endblock %}


{% block content %}
<div class="wrapper">
	
  <div class="form-section">
  	<img class="from-logo" src="https://files1.porsche.com/filestore/image/multimedia/none/875d5e3d-6763-47fe-bc52-809142d53274/svg/d4c766d7-7761-11e7-99c7-0019999cd470/porsche-svg.svg">
    <div class="form-title">管理系统后台登录</div>
    <div class="form-item">
      <input type="text" class="form-input" placeholder="你的姓名"/>
    </div>
    <div class="form-item">
      <input type="text" class="form-input" placeholder="你的电话"/>
    </div>
    <div class="form-item">
      <button class="form-button">马上抢占名额</button>
    </div>
  </div>
</div>

{% endblock %}


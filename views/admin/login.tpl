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
      <input id="userPhone" type="text" class="form-input" placeholder="你的手机"/>
    </div>
    <div class="form-item">
      <input id="userPassword" type="text" class="form-input" placeholder="你的密码"/>
    </div>
    <div class="form-item">
      <button id="userSubmit" class="form-button">马上抢占名额</button>
    </div>
  </div>
</div>

{% endblock %}

{% block js %}
<script src="/javascripts/jquery-3.3.1.min.js"></script>
<script src="/javascripts/login.js"></script>
{% endblock %}


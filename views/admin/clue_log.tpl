{% extends './../layout.tpl' %}

{% block content %}
<link rel="stylesheet" href="/stylesheets/clue_log.css"/>


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
        <div class="content-tail">
        	<div class="content-title">跟踪线索</div>
			<div class="content-control">
			  <a href="/admin/clue">返回线索列表 >></a>
			</div>
		</div>

		
			<div class="content-mainer">
			  <div class="form-section">
			    <div class="form-item">
			      <span class="form-text">客户名称：周秀娜</span>
			    </div>
			    <div class="form-item">
			      <span class="form-text">联系电话：1351231232</span>
			    </div>
			    <div class="form-item">
			      <span class="form-text">线索来源：baidu_search</span>
			    </div>
			    <div class="form-item">
			      <span class="form-text">创建时间：2019-4-1</span>
			    </div>
			    <div class="form-item">
			      <span class="form-text">线索状态：意向强烈</span>
			    </div>
			    <div class="form-item">
			      <span class="form-text">用户状态：</span>
			      <div class="form-item">
			        <select class="form-input">
			          <option value="0">请选择线索状态</option>
			          <option value="1">没有意向</option>
			          <option value="2">意向一般</option>
			          <option value="3">意向强烈</option>
			          <option value="4">完成销售</option>
			          <option value="5">取消销售</option>
			        </select>
			      </div>
			    </div>
			    <div class="form-item">
			      <p class="form-text">备注：</p>
			      <textarea class="form-textarea" placeholder="备注信息"></textarea>
			    </div>
			    <div class="form-item">
			      <button class="form-button">保存</button>
			    </div>
			  </div>
			  <div class="log-section">
			    <ul class="log-list">
			      <li class="log-item">
			        <p class="log-data">2019-4-1</p>
			        <p class="log-content">第一次打电话过去，用户立刻挂掉，再接再厉</p>
			      </li>
			      <li class="log-item">
			        <p class="log-data">2019-4-1</p>
			        <p class="log-content">第一次打电话过去，用户立刻挂掉，再接再厉</p>
			      </li>
			    </ul>
			    <div class="form-section">
			      <div class="form-item">
			        <p class="form-text">添加记录：</p>
			        <textarea class="form-textarea" placeholder="请输入本次跟踪的记录 ～"></textarea>
			      </div>
			      <div class="form-item">
			        <button class="form-button">添加</button>
			      </div>
			    </div>
			  </div>
			</div>
<!-- 主要修改区 -->
      </div>
<!-- 修改区 -->



    </div>
    <footer class="page-footer">Copyright © 2019 极客学院体验技术部出品</footer>
  </div>

{% endblock %}
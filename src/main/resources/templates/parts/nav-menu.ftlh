<#import "../parts/main.ftlh" as m>
<@m.page>
  <#macro navmenu>
      <!-- navigation -->
      <div class="menu">
          <nav class="nav-wrapper">
              <div class="container">
                  <div class="row">
                      <div class="col-md-2">
                          <a href="#" class="logo">My<strong id="manager">Destiny</strong></a>
                      </div>
                      <div class="col-md-9">
                          <div class="navigation">
                              <a href="#" class="navigation__link">Главная</a>
                              <a href="#" class="navigation__link">Инструкция</a>
                              <a href="#" class="navigation__link">Акции</a>
                              <a href="#" class="navigation__link">Контакты</a>
                              <a href="#" class="navigation__link">Личный кабинет</a>
                          </div>
                      </div>

                      <div class="col-md-1">
                          <div class="navigation">
                              <a href="#" class="navigation__link">SignUp</a>
                          </div>
                      </div>
                  </div>
              </div>
          </nav>
      </div>

  </#macro>
</@m.page>
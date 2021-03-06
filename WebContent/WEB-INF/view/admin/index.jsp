<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/view/header.jsp">
  <jsp:param name="navigation" value="home" />
</jsp:include>
<section id="content" role="main" style="background: #f5f5f5;">
  <header class="aui-page-header">
    <div class="aui-page-header">
      <div class="aui-page-header-inner">
        <h1>index</h1>
      </div>
    </div>
  </header>
  <div class="aui-page-panel">
    <div class="aui-page-panel-inner">
      <div class="aui-page-panel-nav">
        <!-- Vertical Nav is usually placed inside .aui-page-panel-nav. Refer to content layout documentation for details. -->
        <nav class="aui-navgroup aui-navgroup-vertical">
          <div class="aui-navgroup-inner">
            <ul class="aui-nav">
              <li class="aui-nav-selected"><a href="http://example.com/">Usage</a></li>
            </ul>
            <div class="aui-nav-heading">
              <strong>Accounts</strong>
            </div>
            <ul class="aui-nav">
              <li><a href="http://example.com/">Users</a></li>
              <li><a href="http://example.com/">Groups</a></li>
              <li><a href="http://example.com/">Global permissions</a></li>
              <li><a href="http://example.com/">Authentication</a></li>
              <li><a href="http://example.com/">Avatars</a></li>
              <li><a href="http://example.com/">User directories</a></li>
            </ul>
            <div class="aui-nav-heading">
              <strong>Settings</strong>
            </div>
            <ul class="aui-nav">
              <li><a href="http://example.com/">Server settings</a></li>
              <li><a href="http://example.com/">Database</a></li>
              <li><a href="http://example.com/">Application links</a></li>
              <li><a href="http://example.com/">Mail server</a></li>
              <li><a href="http://example.com/">Licensing</a></li>
            </ul>
            <div class="aui-nav-heading">
              <strong>Support</strong>
            </div>
            <ul class="aui-nav">
              <li><a href="http://example.com/">Atlassian Support
                  Tools</a></li>
              <li><a href="http://example.com/">Logging and Profiling</a></li>
            </ul>
          </div>
        </nav>
        <!-- Vertical Nav is usually placed inside aui-page-panel-nav -->
      </div>
      <section class="aui-page-panel-content">
        <h1>DataGrid </h1>
        <div style="width: 80%;" class="embedded-panel">
          <div class="dateGrid_operate">
            <table style="width: 100%;" id="dateGrid_operate" >
              <tbody>
                <tr>
                  <td style="width: 100%;">
                    <a class="aui-button" href="javascript:void(0)">
                       <span class="aui-icon aui-icon-small aui-iconfont-add"></span>add
                    </a> 
                    <a class="aui-button" href="javascript:void(0)">
                      <span class="aui-icon aui-icon-small aui-iconfont-add"></span>edit
                    </a>
                     <a  class="aui-button" href="javascript:void(0)">
                        <span class="aui-icon aui-icon-small aui-iconfont-close-dialog"></span>delete
                     </a>
                  </td>
                  <td style="white-space: nowrap;">
                          <input type="text"  class="text"  placeholder="please input  name" id="fname" name="fname">
                    <a class="aui-button"  href="javascript:void(0)">
                      <span class="aui-icon aui-icon-small aui-iconfont-search"></span>search
                    </a>
                  </td>
                </tr>
              </tbody>
            </table><!--#dateGrid_operate  -->
          </div><!--.dateGrid_operate  -->
          <div class="dateGrid_all">
            <div class="title">
              <table class="aui "  id="dateGrid_tilte">
                <tr>
                 <th><input type="checkbox" id="checkbox_all"></th>
                 <th><div class="dateGrid_div">id</div></th>
                 <th><div class="dateGrid_div" >uploader</div></th>
                 <th><div class="dateGrid_div">name</div></th>
                 <th><div class="dateGrid_div">description</div></th>
                 <th><div class="dateGrid_div">project</div></th>
                 <th><div class="dateGrid_div">version</div></th>
                 <th><div class="dateGrid_div">category</div></th>
                 <th><div class="dateGrid_div">tags</div></th>
                 <th><div class="dateGrid_div">downloads</div></th>
                 <th style="width: 2%"></th>
               </tr>
              </table>
            </div><!--.title  -->
            <div class="content">
              <div>
                <table class="aui"  id="dateGrid">
                 <c:forEach items="${jarFiles.content }" var="jarFile">
                  <tr>
                    <td id="checkbox"><input type="checkbox" id="checkbox_${jarFile.id}"></td>
                    <td id="id"><div class="dateGrid_div">${jarFile.id }</div></td>
                    <td id="uploader"><div class="dateGrid_div">${jarFile.uploader }</div></td>
                    <td id="name"><div class="dateGrid_div">${jarFile.name }</div></td>
                    <td id="description"><div class="dateGrid_div">${jarFile.description }</div></td>
                    <td id="project"><div class="dateGrid_div">${jarFile.project }</div></td>
                    <td id="version"><div class="dateGrid_div">${jarFile.version }</div></td>
                    <td id="category"><div class="dateGrid_div">${jarFile.category }</div></td>
                    <td id="tags"><div class="dateGrid_div">${jarFile.tags }</div></td>
                    <td id="downloads"><div class="dateGrid_div">${jarFile.downloads }</div></td>
                  </tr>
                </c:forEach>
                </table>
                <script language="javascript">
                <!--
                 //senfe("表格名称","奇数行背景","偶数行背景","鼠标经过背景","点击后背景");
                 senfe("dateGrid","#fff","#fff","#f5f5f5","#fff");
                -->
               </script>
              </div>
            </div><!--.content  -->
          </div><!--.dateGrid_all  -->
          <div class="dateGrid_operate">
            <table style="width: 100%;" id="dateGrid_operate" >
              <tbody>
                <tr>
                  <td style="width: 100%;">
                    <a class="aui-button" href="javascript:void(0)">
                       <span class="aui-icon aui-icon-small aui-iconfont-add"></span>add
                    </a> 
                    <a class="aui-button" href="javascript:void(0)">
                      <span class="aui-icon aui-icon-small aui-iconfont-add"></span>edit
                    </a>
                     <a  class="aui-button" href="javascript:void(0)">
                        <span class="aui-icon aui-icon-small aui-iconfont-close-dialog"></span>delete
                     </a>
                  </td>
                  <td style="white-space: nowrap;">
                          <input type="text"  class="text"  placeholder="please input  name" id="fname" name="fname">
                    <a class="aui-button"  href="javascript:void(0)">
                      <span class="aui-icon aui-icon-small aui-iconfont-search"></span>search
                    </a>
                  </td>
                </tr>
              </tbody>
            </table><!--#dateGrid_operate  -->
          </div><!--.dateGrid_operate  -->
        </div><!--.embedded-panel  -->
      </section>
    </div>
    <!--.aui-page-panel-inner  -->
  </div>
  <!--.aui-page-panel  -->
</section>
<jsp:include page="/WEB-INF/view/footer.jsp" />
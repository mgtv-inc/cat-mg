<%@ tag trimDirectiveWhitespaces="true" pageEncoding="UTF-8" %>
<%@ taglib prefix="a" uri="/WEB-INF/app.tld" %>

<a:base>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#nav_application").addClass("disabled");
        });
    </script>
    <div class="main-container" id="main-container">
        <script type="text/javascript">
            try {
                ace.settings.check('main-container', 'fixed')
            } catch (e) {
            }
        </script>
        <div id="sidebar" class="sidebar   responsive" style="background:#001529;color: hsla(0, 0%, 100%, .65);">
            <script type="text/javascript">
                try {
                    ace.settings.check('sidebar', 'fixed')
                } catch (e) {
                }
            </script>
            <ul class="nav nav-list" style="top: 0px;background:#001529;color: hsla(0, 0%, 100%, .65);">
                <li id="Dashboard_report" class="hsub">
                    <a href="/cat/r/top?op=view&domain=${model.domain}">
                        <i class="menu-icon fa fa-tachometer"></i>
                        <span class="menu-text">Dashboard</span>
                    </a>
                </li>
                <li id="Transaction_report">
                    <a href="/cat/r/t?domain=${model.domain}&ip=${model.ipAddress}&date=${model.date}&reportType=${payload.reportType}&op=${payload.action.name}">
                        <i class="menu-icon glyphicon glyphicon-time"></i>
                        <span class="menu-text">Transaction</span>
                    </a>
                </li>
                <li id="Event_report">
                    <a href="/cat/r/e?domain=${model.domain}&ip=${model.ipAddress}&date=${model.date}&reportType=${payload.reportType}&op=${payload.action.name}">
                        <i class="menu-icon fa fa-flag"></i>
                        <span class="menu-text">Event</span>
                    </a>
                </li>
                <li id="Problem_report">
                    <a href="/cat/r/p?domain=${model.domain}&ip=${model.ipAddress}&date=${model.date}&reportType=${payload.reportType}&op=${payload.action.name}">
                        <i class="menu-icon fa fa-bug"></i>
                        <span class="menu-text">Problem</span>
                    </a>
                </li>
                <li id="Heartbeat_report">
                    <a href="/cat/r/h?domain=${model.domain}&ip=${model.ipAddress}&date=${model.date}&reportType=${payload.reportType}&op=${payload.action.name}">
                        <i class="menu-icon  fa fa-heart"></i>
                        <span class="menu-text">Heartbeat</span>
                    </a>
                </li>
                <li id="Cross_report">
                    <a href="/cat/r/cross?domain=${model.domain}&ip=${model.ipAddress}&date=${model.date}&reportType=${payload.reportType}&op=${payload.action.name}">
                        <i class="menu-icon  glyphicon glyphicon-random"></i>
                        <span class="menu-text">Cross</span>
                    </a>
                </li>
                <li id="Business_report">
                    <a href="/cat/r/business?name=${model.domain}&type=domain">
                        <i class="menu-icon fa fa-list-alt"></i>
                        <span class="menu-text">Business</span>
                    </a>
                </li>

                <li id="State_report">
                    <a href="/cat/r/state?domain=${model.domain}&ip=${model.ipAddress}&date=${model.date}&reportType=${payload.reportType}&op=${payload.action.name}">
                        <i class="menu-icon fa fa-bar-chart-o"></i>
                        <span class="menu-text">State</span>
                    </a>
                </li>
            </ul>
            </ul>
            <!-- #section:basics/sidebar.layout.minimize -->
            <!--
            <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
                <i class="ace-icon fa fa-angle-double-left" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
            </div>
            -->

            <!-- /section:basics/sidebar.layout.minimize -->
            <script type="text/javascript">
                try {
                    ace.settings.check('sidebar', 'collapsed')
                } catch (e) {
                }
            </script>
        </div>
        <div class="main-content">
            <div id="dialog-message" class="hide">
                <p>
                    你确定要删除吗？(不可恢复)
                </p>
            </div>
            <div style="padding-top:10px;padding-left:10px;padding-right:8px;margin-top: 10px;margin-left:10px;margin-right:10px;padding-bottom:20px;background: #FFF;">
                <jsp:doBody/>
            </div>
        </div>
    </div>
</a:base>



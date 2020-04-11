<#macro login path>
<#--    <form action="${path}" method="post">-->
<#--        <div><label> User Name : <input type="text" name="username"/> </label></div>-->
<#--        <div><label> Password: <input type="password" name="password"/> </label></div>-->
<#--        <input type="hidden" name="_csrf" value="${_csrf.token}">-->
<#--        <div><input type="submit" value="Sign In"/></div>-->
        <!DOCTYPE html>
        <html lang="en">
        <head>
            <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
            <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
            <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
            <!------ Include the above in your HEAD tag ---------->
            <link rel="stylesheet" type="text/css" href="/static/styles/auth.css">
            <script type="text/javascript" src="/static/javascript/auth.js"></script>
            <meta charset="UTF-8">
            <title>Auth</title>
        </head>
        <body>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="pr-wrap">
                        <div class="pass-reset">
                            <label>
                                Enter the email you signed up with</label>
                            <input type="email" placeholder="Email" />
                            <input type="submit" value="Submit" class="pass-reset-submit btn btn-success btn-sm" />
                        </div>
                    </div>
                    <div class="wrap">
                        <p class="form-title">
                            Sign In</p>
                        <form class="login" action="${path}" method="post">
                            <input type="text" name="username" placeholder="Username" />
                            <input type="password" name="password" placeholder="Password" />
                            <input type="hidden" name="_csrf" value="${_csrf.token}">
                            <input type="submit" value="Sign In" class="btn btn-success btn-sm" />
                            <div class="remember-forgot">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox" />
                                                Remember Me
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-md-6 forgot-pass-content">
                                        <a href="javascription:void(0)" class="forgot-pass">Forgot Password</a>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="posted-by">©2020 MyDestiny</div>
        </div>

        </body>
        </html>
    </form>
</#macro>

<#macro logout>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Sign Out"/>
    </form>
</#macro>
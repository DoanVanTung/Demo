<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title></title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="from.css">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</head>
<body style="font-family: sans-serif">

<div class="row">
    <div class="col-md-6 col-md-offset-3">
        <h2>Send Email</h2>
        <form action="send" method="post" >
             <div class="row">
                <div class="col-sm-6 form-group">
                    <label for="name">
                        Email Gửi:</label>
                    <input type="text" class="form-control"  name="mailfrom" placeholder="From">
                </div>
                <div class="col-sm-6 form-group">
                    <label for="email">
                        Email Nhận:</label>
                    <input type="email" class="form-control"  name="mailto" placeholder="To">
                </div>
            </div>

             <div class="row">
                <div class="col-sm-6 form-group">
                    <label for="name">
                        Subject:</label>
                    <input type="text" class="form-control" name="subject" placeholder="Subject">
                </div>
            </div>

            <div class="row">
                <div class="col-sm-12 form-group">
                    <label for="comments">
                        Comments:</label>
                    <textarea class="form-control" type="textarea" name="comments" id="comments" placeholder="Your Comments" maxlength="6000" rows="7"></textarea>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-12 form-group">
                    <button type="submit" class="btn btn-lg btn-primary btn-block" >Send →</button>
                </div>
            </div>

        </form>
        <div id="success_message" style="width:100%; height:100%; display:none; ">
            <h3>Posted your feedback successfully!</h3>
        </div>
        <div id="error_message"
                style="width:100%; height:100%; display:none; ">
                    <h3>Error</h3>
                    Sorry there was an error sending your form.

        </div>
    </div>
</div>


</body>
</html>
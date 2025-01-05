<%@page pageEncoding="UTF-8" %>

<!DOCTYPE html
     PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
     "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>

<head>
  <title>Snail Bucket - Create tourney</title>
  <meta name="robots" content="noindex,nofollow" />
  <link href="/static/jspwiki.css" type="text/css" rel="stylesheet" />
  <link href="/static/jquery-ui.css" type="text/css" rel="stylesheet" />
  <script type="text/javascript" src="/static/jquery.js"></script>
  <script type="text/javascript" src="/static/jquery.validate.js"></script>
  <script type="text/javascript" src="/static/jquery-ui.js"></script>
  <style type="text/css">
          body { font-family:Lucida Sans, Arial, Helvetica, Sans-Serif; font-size:13px; margin:20px;}
          #main { margin: 0px auto; border:solid 1px #b2b3b5; -moz-border-radius:10px; padding:20px; background-color:#f6f6f6;}
          #header { text-align:center; border-bottom:solid 1px #b2b3b5; margin: 0 0 20px 0; }
          fieldset { border:none; width:520px;}
          legend { font-size:18px; margin:0px; padding:10px 0px; color:#b0232a; font-weight:bold;}
          label { display:block; margin:15px 0 5px;}
          input[type=text], input[type=password] { width:300px; padding:5px; border:solid 1px #000;}
          .prev, .next { background-color:#b0232a; padding:5px 10px; color:#fff; text-decoration:none;}
          .prev:hover, .next:hover { background-color:#000; text-decoration:none;}
          .prev { float:left;}
          .next { float:right;}
          #steps { list-style:none; width:100%; overflow:hidden; margin:0px; padding:0px;}
          #steps li {font-size:24px; float:left; padding:10px; color:#b0b1b3;}
          #steps li span {font-size:11px; display:block;}
          #steps li.current { color:#000;}
          #makeWizard { background-color:#b0232a; color:#fff; padding:5px 10px; text-decoration:none; font-size:18px;}
          #makeWizard:hover { background-color:#000;}
          .radioLeft
          {
             float: left;
          }

          .textBlock
          {
              float: left;
              width: 80%; //Adjust this value to fit
          }
      </style>
      <style>
      	#TourneyForm label.error {
      		color:#FF0000;
      	}
      	</style>
      <script>
      	$().ready(function() {
      	    $( "#From" ).datepicker();
            $( "#To" ).datepicker();
            $( "#Start" ).datepicker();
            $( "#End" ).datepicker();
      	    $("#TourneyForm").validate({
                                			rules: {
                                				Full_name: {
                                					required: true,
                                					minlength: 5
                                				},
                                				Short_name: {
                                					required: true,
                                					maxlength: 12
                                				},
                                				Max: {
                                					required: true,
                                					number: true
                                				},
                                				From: {
                                					required: true,
                                				},
                                				To: {
                                                                                					required: true,
                                                                                				}
                                			},
                                			messages: {
                                				Full_name: {
                                					required: "Please enter a full name",
                                					minlength: "Must consist of at least 5 characters"
                                				},
                                				Short_name: {
                                					required: "Please provide a short name",
                                					minlength: "Must be max 7 characters long"
                                				},
                                				Max: {
                                					required: "Please provide a max number of participants",
                                					number: "Should be a number"
                                				},
                                				From: "Please enter a date",
                                				To: "Please enter a date",
                                				Start: "Please enter a date",
                                			}
                                		});
                                		});
                                		</script>
                                       <style>
                                                           #panel1, #flip {
                                                               background-color: #e5eecc;
                                                           }
                                                           #panel1 {
                                                               padding: 10px;
                                                               display: none;
                                                           }
                                                           #sortable, #sortable2 {
                                                               list-style-type: none;
                                                               margin: 0;
                                                               padding: 0;
                                                               text-align: right;
                                                               background: #eee;
                                                               padding: 5px;
                                                               width: 143px;
                                                           }
                                                           #sortable li, #sortable2 li {
                                                               margin: 5px;
                                                               padding: 5px;
                                                               font-size: 1.2em;
                                                               width: 120px;
                                                           }
                                                           #user-menu1 {
                                                               float: left;
                                                               margin-right: 2em;
                                                               padding: 0;
                                                               text-align: center;
                                                               height: 20px; /* Adjusted height */
                                                               overflow: hidden; /* Prevents increasing overall size */
                                                           }
                                                           #user-menu1 li {
                                                               display: inline;
                                                               list-style-type: none;
                                                               list-style-image: none;
                                                               padding: 5px 0.8em 0 0.8em; /* Added top padding */
                                                               font-size: 100%; /* Increased font size */
                                                           }

                                                           /* Added CSS for login text */
                                                           .login-text {
                                                               font-size: 100%; /* Increased font size */
                                                           }
                                                           /* Existing responsiveness CSS */
                                                           #wiki-content {
                                                               margin: 0 auto;
                                                               max-width: 1300px;
                                                               padding: 0 15px;
                                                           }
                                                           @media screen and (max-width: 600px) {
                                                               #wiki-content {
                                                                   padding: 0 10px;
                                                                   max-width: none;
                                                               }
                                                           }
                                                               #user-menu1 ul {
                                                                 list-style: none;
                                                                 margin: 0;
                                                                 padding: 0;
                                                               }
                                                               #user-menu1 ul li {
                                                                 position: relative;
                                                                 display: inline-block;
                                                               }
                                                               #user-menu1 ul li a {
                                                                 text-decoration: none;
                                                                 display: block;
                                                                 padding: 10px;
                                                                 color: #000;
                                                               }
                                                               #user-menu1 ul li ul {
                                                                 display: none;
                                                                 position: absolute;
                                                                 background-color: #e5eecc;
                                                                 min-width: 160px;
                                                                 list-style: none;
                                                                 padding: 0;
                                                                 margin: 0;
                                                               }
                                                               #user-menu1 ul li:hover > ul {
                                                                 display: block;
                                                               }
                                                               #user-menu1 ul li ul li {
                                                                 display: block;
                                                               }
                                                               #user-menu1 ul li ul li a {
                                                                 padding: 10px;
                                                               }
                                                               #user-menu1 ul li ul li a:hover {
                                                                 background-color: #ddd;
                                                               }
                                                       </style>
</head>
<body>

<div id="wiki-page">
<div id="wiki-navigation">

</div>
<div id="wiki-content">

<jsp:include page="reg.jsp"></jsp:include>

<div class="clear"></div>


<div id="tab-menu">





</div>
<div class="clear"></div>

	<div id="contents" >
	<h1 id="contents-header">Create tourney</h1>



<div id="content-article">
<p>Note: all date fields assume 11:00 PM EDT.</p>
<form id="TourneyForm" action="/tourney/create" method="post">
        <fieldset>
            <legend>Tourney information</legend>
            <label for="Full_name">Full name of the tourney:</label>
            <input id="Full_name" name="Full_name" type="text" />
            <label for="Short_name">Short name (used in ULRs; wihout spaces):</label>
            <input id="Short_name" name="Short_name" type="text" />
            <label for="Max">Max number of participants (please enter a number, otherwise won't work):</label>
            <input id="Max" name="Max" type="text" />
            <label for="From">Signup start date:</label>
            <input id="From" name="From" type="text" />
            <label for="To">Signup end date:</label>
                        <input id="To" name="To" type="text" />
                        <label for="Start">Tourney start date:</label>
                                                <input id="Start" name="Start" type="text" />
                                                <label for="End">Tourney end date:</label>
                                                                                                <input id="End" name="End" type="text" />

        </fieldset>
        <p>
            <input id="SaveAccount" type="submit" value="Submit form" />
        </p>
        </form>
<div class="clear"></div>



	<br />
	</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</div>
</div>


</body>
</html>

<div class="content-wrapper">
    <div class="page-header d-flex justify-content-between">
        <div>
            <h3 class="page-title">
                <span class="page-title-icon bg-gradient-primary text-white me-2">
                    <i class="mdi mdi-crosshairs-gps menu-icon"></i>
                </span> Form Builder
            </h3>
        </div>
    </div>
    <div class="f main-panel">
        <?php echo validation_errors(); ?>
        <?php echo form_open('FormBuilder/save'); ?>
        <div>
            <label for="name">Name:</label>
            <input type="text" name="name" id="name" value="<?php echo set_value('name'); ?>" required />
        </div>
        <div>
            <label for="html_code">HTML Code:</label>
            <?php
            $default_html_code = '<!DOCTYPE html>
            <html lang="en">
            <head>
                <meta charset="UTF-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
                <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
            </head>
            <body>
                    
            
            <section>
                <div class="rt-container">
                      <div class="col-rt-12">
                          <div class="Scriptcontent">
                          
            <div class="feedback">
            <h2  style="text-align: center;">Feedback Form</h2>
            <p>Dear Customer,<br>
            Thank you for getting your services at our platform. We would like to know how we performed. Please spare some moments to give us your valuable feedback as it will help us in improving our service.</p>
            
            <h4>Please rate your service experience for the following parameters</h4><br>
            <form method="post" action="submitFeedback">
            
            <label>Name:</label><br>
            <input type="text" name="name" required/><br>
            
            <lable>Mobile No. :</lable><br>
            <input type="text" name="mobile" required/><br>
            
            <label>Device Name :</label><br>
            <select name="device_name" style="width: 50%;height:40px;font-size:20px">
              <option value="NA">--</option>
              <option value="Laptop">Laptop</option>
                <option value="Mobile">Mobile</option>
                <option value="SmartTV">SmartTV</option>
            </select><br>
            <label>1.   How satisfied are you with the Device experience?</label><br>
            <span class="star-rating" required>
                <input type="radio" name="rating1" value="1"><i></i>
                <input type="radio" name="rating1" value="2"><i></i>
                <input type="radio" name="rating1" value="3"><i></i>
                <input type="radio" name="rating1" value="4"><i></i>
                <input type="radio" name="rating1" value="5"><i></i>
              </span>
            
            <div class="clear"></div> 
              <hr class="survey-hr">
            <label>2.  How easy was it to navigate and use the device? </label><br>
            <span class="star-rating" required>
              <input type="radio" name="rating2" value="1"><i></i>
              <input type="radio" name="rating2" value="2"><i></i>
              <input type="radio" name="rating2" value="3"><i></i>
              <input type="radio" name="rating2" value="4"><i></i>
              <input type="radio" name="rating2" value="5"><i></i>
            </span>
            
             
            <div class="clear"></div> 
            <hr class="survey-hr">
            <label>3.   How would you rate the speed and responsiveness of the device? </label><br>
            <span class="star-rating" required>
            <input type="radio" name="rating3" value="1"><i></i>
            <input type="radio" name="rating3" value="2"><i></i>
            <input type="radio" name="rating3" value="3"><i></i>
            <input type="radio" name="rating3" value="4"><i></i>
            <input type="radio" name="rating3" value="5"><i></i>
            </span>
            
            <div class="clear"></div> 
              <hr class="survey-hr">
            <label>4.   How would you rate the visual design and aesthetics of the device? </label><br>
            <span class="star-rating"required>
              <input type="radio" name="rating4" value="1"><i></i>
              <input type="radio" name="rating4" value="2"><i></i>
              <input type="radio" name="rating4" value="3"><i></i>
              <input type="radio" name="rating4" value="4"><i></i>
              <input type="radio" name="rating4" value="5"><i></i>
            </span>
            
            <div class="clear"></div> 
              <hr class="survey-hr"required>
            <label>5.  How relevant and helpful was the content/information provided on the service platform? </label><br>
            <span class="star-rating">
              <input type="radio" name="rating5" value="1"><i></i>
              <input type="radio" name="rating5" value="2"><i></i>
              <input type="radio" name="rating5" value="3"><i></i>
              <input type="radio" name="rating5" value="4"><i></i>
              <input type="radio" name="rating5" value="5"><i></i>
            </span>
            
            <div class="clear"></div> 
              <hr class="survey-hr">
            <label>6.   How useful were the main features and functionalities of the Device?  </label><br>
            <span class="star-rating"required>
              <input type="radio" name="rating6" value="1"><i></i>
              <input type="radio" name="rating6" value="2"><i></i>
              <input type="radio" name="rating6" value="3"><i></i>
              <input type="radio" name="rating6" value="4"><i></i>
              <input type="radio" name="rating6" value="5"><i></i>
            </span>
            
            <div class="clear"></div> 
              <hr class="survey-hr">
            <label class="7">7.  What additional features or functionality would you like to see in the device? </label><br>
            <textarea cols="75" name="additional_features" rows="5" ></textarea><br>
            
            
            <div class="clear"></div> 
              <hr class="survey-hr">
            <label class="8">8.   What did you like most about the device? </label><br>
            <textarea cols="75" name="liked_most" rows="5" ></textarea><br>
            
            
            <div class="clear"></div> 
              <hr class="survey-hr">
            <label class="9">9. What did you like least about the device? </label><br>
            <textarea cols="75" name="liked_least" rows="5" ></textarea><br>
            
            
              <div class="clear"></div> 
              <hr class="survey-hr"> 
            <label for="10">10. Any Other suggestions:</label><br/>
            <textarea cols="75" name="other_suggestions" rows="5" ></textarea><br>
            <br>
              <div class="clear"></div> 
            <input style="background:#43a7d5;color:#fff;padding:12px;border:0" type="submit" value="Submit your review">&nbsp;
            </form>
                              </div>
                       
                        </div>
                    </div>
                </div>
            </section>
                </body>
                <style>
            
            @import url("https://fonts.googleapis.com/css?family=Raleway:400,500,600,700,800,900");
            
            html {
              box-sizing: border-box;
            }
            *, *:before, *:after {
              box-sizing: inherit;
            }
            
            article, header, section, aside, details, figcaption, figure, footer, header, hgroup, main, nav, section, summary {
                display: block;
            }
            body {
                background:#d9e5ed none repeat scroll 0 0;
                color: #222;
                font-size: 100%;
                line-height: 24px;
                margin: 0;
                padding:0;
                font-family: "Raleway",sans-serif;
            }
            a{
                font-family: "Raleway",sans-serif;
                text-decoration: none;
                outline: none;
            }
            a:hover, a:focus {
                color: #373e18;
            }
            section {
                float: left;
                width: 100%;
                padding-bottom:3em;
            }
            h2 {
                color: #1a0e0e;
                font-size: 26px;
                font-weight: 700;
                margin: 0;
                line-height: normal;
                text-transform:uppercase;
            }
            h2 span {
                display: block;
                padding: 0;
                font-size: 18px;
                opacity: 0.7;
                margin-top: 5px;
                text-transform:uppercase;
            }
            
            #float-right{
                float:right;	
            }
            
            .ScriptTop {
                background: #fff none repeat scroll 0 0;
                float: left;
                font-size: 0.69em;
                font-weight: 600;
                line-height: 2.2;
                padding: 12px 0;
                text-transform: uppercase;
                width: 100%;
            }
            
            .ScriptTop ul {
                margin: 24px 0;
                padding: 0;
                text-align: left;
            }
            .ScriptTop li{
                list-style:none;	
                display:inline-block;
            }
            .ScriptTop li a {
                background: #6a4aed none repeat scroll 0 0;
                color: #fff;
                display: inline-block;
                font-size: 14px;
                font-weight: 600;
                padding: 5px 18px;
                text-decoration: none;
                text-transform: capitalize;
            }
            .ScriptTop li a:hover{
                background:#000;
                color:#fff;
            }
            
            .ScriptHeader {
                float: left;
                width: 100%;
                padding: 2em 0;
            }
            .rt-heading {
                margin: 0 auto;
                text-align:center;
            }
            .Scriptcontent{
                line-height:28px;	
            }
            .ScriptHeader h1{
                font-family: "brandon-grotesque", "Brandon Grotesque", "Source Sans Pro", "Segoe UI", Frutiger, "Frutiger Linotype", "Dejavu Sans", "Helvetica Neue", Arial, sans-serif;
              text-rendering: optimizeLegibility;
              -webkit-font-smoothing: antialiased;
                color: #6a4aed;
                font-size: 26px;
                font-weight: 700;
                margin: 0;
                line-height: normal;
            
            }
            .ScriptHeader h2 {
                color: #312c8f;
                font-size: 20px;
                font-weight: 400;
                margin: 5px 0 0;
                line-height: normal;
            
            }
            .ScriptHeader h1 span {
                display: block;
                padding: 0;
                font-size: 22px;
                opacity: 0.7;
                margin-top: 5px;
            
            }
            .ScriptHeader span {
                display: block;
                padding: 0;
                font-size: 22px;
                opacity: 0.7;
                margin-top: 5px;
            }
            
            .rt-container {
                margin: 0 auto;
                padding-top:30px ;
                padding-left:12px;
                padding-right:12px;
            }
            .rt-row:before, .rt-row:after {
              display: table;
              line-height: 0;
              content: "";
            }
            
            .rt-row:after {
              clear: both;
            }
            [class^="col-rt-"] {
              box-sizing: border-box;
              -webkit-box-sizing: border-box;
              -moz-box-sizing: border-box;
              -o-box-sizing: border-box;
              -ms-box-sizing: border-box;
              padding: 0 15px;
              min-height: 1px;
              position: relative;
            }
            
            
            @media (min-width: 768px) {
              .rt-container {
                width: 750px;
              }
              [class^="col-rt-"] {
                float: left;
                width: 49.9999999999%;
              }
              .col-rt-6, .col-rt-12 {
                width: 100%;
              }
              
            }
            
            @media (min-width: 1200px) {
                .rt-container {
                    width: 1170px;
                }
                .col-rt-1 {
                    width:16.6%;
                }
                .col-rt-2 {
                    width:30.33%;
                }
                .col-rt-3 {
                    width:50%;
                }
                .col-rt-4 {
                    width: 67.664%;
                }
                .col-rt-5 {
                    width: 83.33%;
                }
                
            
            }
            
            @media only screen and (min-width:240px) and (max-width: 768px){
                 .ScriptTop h1, .ScriptTop ul {
                    text-align: center;
                }
                .ScriptTop h1{
                    margin-top:0;
                    margin-bottom:15px;
                }
                .ScriptTop ul{
                     margin-top:12px;		
                }
                
                .ScriptHeader h1,
                .ScriptHeader h2, 
                .scriptnav ul{
                    text-align:center;	
                }
                .scriptnav ul{
                     margin-top:12px;		
                }
                #float-right{
                    float:none;	
                }
                
            }
            .feedback{
                width: 100%;
                max-width: 780px;
                background: #fff;
                margin: 0 auto;
                padding: 15px;
                box-shadow: 1px 1px 16px rgba(0, 0, 0, 0.3);
            }
            .survey-hr{
              margin:10px 0;
              border: .5px solid #ddd;
            }
            .star-rating {
               margin: 25px 0 0px;
              font-size: 0;
              white-space: nowrap;
              display: inline-block;
              width: 175px;
              height: 35px;
              overflow: hidden;
              position: relative;
              background: url("data:image/svg+xml;base64,PHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4IiB3aWR0aD0iMjBweCIgaGVpZ2h0PSIyMHB4IiB2aWV3Qm94PSIwIDAgMjAgMjAiIGVuYWJsZS1iYWNrZ3JvdW5kPSJuZXcgMCAwIDIwIDIwIiB4bWw6c3BhY2U9InByZXNlcnZlIj48cG9seWdvbiBmaWxsPSIjREREREREIiBwb2ludHM9IjEwLDAgMTMuMDksNi41ODMgMjAsNy42MzkgMTUsMTIuNzY0IDE2LjE4LDIwIDEwLDE2LjU4MyAzLjgyLDIwIDUsMTIuNzY0IDAsNy42MzkgNi45MSw2LjU4MyAiLz48L3N2Zz4=");
              background-size: contain;
            }
            .star-rating i {
              opacity: 0;
              position: absolute;
              left: 0;
              top: 0;
              height: 100%;
              width: 20%;
              z-index: 1;
              background: url("data:image/svg+xml;base64,PHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4IiB3aWR0aD0iMjBweCIgaGVpZ2h0PSIyMHB4IiB2aWV3Qm94PSIwIDAgMjAgMjAiIGVuYWJsZS1iYWNrZ3JvdW5kPSJuZXcgMCAwIDIwIDIwIiB4bWw6c3BhY2U9InByZXNlcnZlIj48cG9seWdvbiBmaWxsPSIjRkZERjg4IiBwb2ludHM9IjEwLDAgMTMuMDksNi41ODMgMjAsNy42MzkgMTUsMTIuNzY0IDE2LjE4LDIwIDEwLDE2LjU4MyAzLjgyLDIwIDUsMTIuNzY0IDAsNy42MzkgNi45MSw2LjU4MyAiLz48L3N2Zz4=");
              background-size: contain;
            }
            .star-rating input {
              -moz-appearance: none;
              -webkit-appearance: none;
              opacity: 0;
              display: inline-block;
              width: 20%;
              height: 100%;
              margin: 0;
              padding: 0;
              z-index: 2;
              position: relative;
            }
            .star-rating input:hover + i,
            .star-rating input:checked + i {
              opacity: 1;
            }
            .star-rating i ~ i {
              width: 40%;
            }
            .star-rating i ~ i ~ i {
              width: 60%;
            }
            .star-rating i ~ i ~ i ~ i {
              width: 80%;
            }
            .star-rating i ~ i ~ i ~ i ~ i {
              width: 100%;
            }
            .choice {
              position: fixed;
              top: 0;
              left: 0;
              right: 0;
              text-align: center;
              padding: 20px;
              display: block;
            }
            span.scale-rating{
            margin: 5px 0 15px;
                display: inline-block;
               
                width: 100%;
               
            }
            span.scale-rating>label {
              position:relative;
                -webkit-appearance: none;
              outline:0 !important;
                border: 1px solid grey;
                height:33px;
                margin: 0 5px 0 0;
              width: calc(10% - 7px);
                float: left;
              cursor:pointer;
            }
            span.scale-rating label {
              position:relative;
                -webkit-appearance: none;
              outline:0 !important;
                height:33px;
                  
                margin: 0 5px 0 0;
              width: calc(10% - 7px);
                float: left;
              cursor:pointer;
            }
            span.scale-rating input[type=radio] {
              position:absolute;
                -webkit-appearance: none;
              opacity:0;
              outline:0 !important;
                height:33px;
             
                margin: 0 5px 0 0;
              
              width: 100%;
                float: left;
              cursor:pointer;
              z-index:3;
            }
            span.scale-rating label:hover{
            background:#fddf8d;
            }
            span.scale-rating input[type=radio]:last-child{
            border-right:0;
            }
            span.scale-rating label input[type=radio]:checked ~ label{
                -webkit-appearance: none;
            
                margin: 0;
              background:#fddf8d;
            }
            span.scale-rating label:before
            {
              content:attr(value);
                top: 7px;
                width: 100%;
                position: absolute;
                left: 0;
                right: 0;
                text-align: center;
                vertical-align: middle;
              z-index:2;
            }
            
            input[type="text"] {
              width: 100%;
              padding: 12px 20px;
              margin: 8px 0;
              display: inline-block;
              border: 1px solid #ccc;
              border-radius: 4px;
              box-sizing: border-box;
              font-size: 16px;
            }
            
            input[type="text"]:focus {
              border-color: #66afe9;
              outline: 0;
              box-shadow: 0 0 8px rgba(102, 175, 233, 0.6);
            }
            
            
            </style>
            
            </html>';
            ?>
            <textarea name="html_code" id="html_code" rows="17" cols="50"><?php echo set_value('html_code', $default_html_code); ?></textarea>
        </div>
        <div>
            <input type="submit" value="Save" class="btn btn-primary"/>
        </div>
        <?php echo form_close(); ?>
    </div>
</div>
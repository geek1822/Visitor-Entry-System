<%-- 
    Document   : mailForm
    Created on : 10 Apr, 2021, 9:52:05 PM
    Author     : Nandini Ojha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=<in>, initial-scale=1.0">
    <title>Document</title>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/emailjs-com@2/dist/email.min.js"></script>
<script type="text/javascript">
(function() {
emailjs.init("user_xaE2KBSp8IF95S4gWTOT3");
})();
</script>
</head>
<style>
    *
    {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }
    h1{
        color:#33adff;
        position:absolute;
        text-align: center;
        top: 10%;
        left: 50%;
        transform:translate(-50%,-50%) ;
        font-family: Verdana Helvetica;
         font-size: 50px;
    }
    
    section {
  height: 100vh;
  width: 100%;
  background-color: aliceblue;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
}
.container {
  width: 90%;
  max-width: 600px;
  max-height: 600px;
  margin: 0 auto;
  padding: 20px;
  box-shadow: 0px 0px 20px #00000010;
  background-color: white;
  border-radius: 8px;
  margin-bottom: 20px;
}
.form-group {
  width: 100%;
  margin-top: 20px;
  font-size: 20px;
}

#fromname {
  width: 100%;
  padding: 5px;
  font-size: 18px;
  border: 1px solid rgba(128, 128, 128, 0.199);
  margin-top: 5px;
}
#toname {
  width: 100%;
  padding: 5px;
  font-size: 18px;
  border: 1px solid rgba(128, 128, 128, 0.199);
  margin-top: 5px;
}
#msg {
  width: 100%;
  padding: 5px;
  font-size: 18px;
  border: 1px solid rgba(128, 128, 128, 0.199);
  margin-top: 5px;
}
#time{
  width: 100%;
  padding: 5px;
  font-size: 18px;
  border: 1px solid rgba(128, 128, 128, 0.199);
  margin-top: 5px;
}
#email
{
  width: 100%;
  padding: 5px;
  font-size: 18px;
  border: 1px solid rgba(128, 128, 128, 0.199);
  margin-top: 5px;
}
textarea {
  resize: vertical;
}
button {
  width: 100%;
  border: none;
  outline: none;
  padding: 20px;
  font-size: 24px;
  border-radius: 8px;
  font-family: "Montserrat";
  color: rgb(27, 166, 247);
  text-align: center;
  cursor: pointer;
  margin-top: 10px;
  transition: 0.3s ease background-color;
}
a{
    font-family: sans-serif;
    color: lightblue;
}


</style>
<body>
    <h1>This is mandatory for visiting Purpose!!</h1>
    <section>
        
        <div class="container">
<div class="form_group">
<input type="text" id="toname" placeholder="Enter Host Name" required >
</div>
<div class="form_group">
<input type="text" id="fromname" placeholder="Enter Your Name" required >
</div>
 <input type="time" id="time" placeholder="Checkin Time" required>
 <input type="email" id="email" placeholder="Enter your Email" required>
 <textarea id="msg" placeholder="Enter your Purpose" required></textarea>


<button onclick="sendMail()">SEND</button>
<br><br>
<p><a href="checkin-out.jsp">After submission goto checkin checkout.</a></p>
</div>
          
</section>
</body>
<script>
    function sendMail(params){
        var tempParams ={
            from_name:document.getElementById("fromname").value ,
            to_name:document.getElementById("toname").value ,
            message:document.getElementById("msg").value ,
            email:document.getElementById("email").value,
            time:document.getElementById("time").value,
        };
        emailjs.send('service_9q0xx98','template_h4gnfdw',tempParams)
        .then(function(res){
            console.log("success",res.status);
            alert('Your form send successfully');
    })
}

</script>
</html>
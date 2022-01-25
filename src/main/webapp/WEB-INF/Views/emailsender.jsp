<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
  <link rel="stylesheet" href="sender.css" />

</head>
<body>
<section>
  <div class="container">
    <form action="@{/mail/send}" method="POST" id="my-form">

      <div class="form-group">
        <label for="from"> From</label>
        <input type="email" id="firstName" name="email">
      </div>

      <div class="form-group">
        <label for="to">To</label>
        <input type="email" id="lastName" name="email">
      </div>

      

      <div class="form-group">
        <label for="massage">Massage</label>
        <textarea name="massage" id="massage" cols="30" rows="10"></textarea>
      </div>

      <button type="submit">Submit</button>
    </form>
  </div>
  <div id="status"></div>
</section>

</body>
</html>
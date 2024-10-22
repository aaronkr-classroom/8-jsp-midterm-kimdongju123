<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>UT-NodeJS 중간고사 | Student Registration</title>

    <meta name="author" content="???" />
    <meta name="description" content="???" />

    <link href="../public/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="../public/css/style.css" />
    <link
      rel="stylesheet"
      media="(max-width: 768px)"
      href="../public/css/style.small.css"
    />

    <script defer src="../public/js/functions.js"></script>
  </head>

  <body>
    <!-- HEADER -->
    <%@ include file="header.jsp" %>

    <!-- MAIN PAGE CONTENT -->
    <main class="container py-5">
      <div class="row justify-content-center">
        <div class="col-md-8">
          <h1 class="text-center mb-4">Student Registration</h1>
          <form action="/register" method="post">
            <div class="row mb-3">
              <div class="col-md-6">
                <input type="text" class="form-control" name="firstName" placeholder="my first name" required />
              </div>
              <div class="col-md-6">
                <input type="text" class="form-control" name="lastName" placeholder="my last name" required />
              </div>
            </div>
            <div class="mb-3">
              <input type="email" class="form-control" name="email" placeholder="Someone@example.com" required />
            </div>
            <div class="mb-3">
              <input type="tel" class="form-control" name="phone" placeholder="9712169979" required />
            </div>
            <div class="mb-3">
              <input type="text" class="form-control" name="city" placeholder="MyCity" required />
            </div>
            <div class="mb-3">
              <label class="form-label">Gender</label>
              <div>
                <input type="radio" name="gender" value="Male" required /> Male
                <input type="radio" name="gender" value="Female" required /> Female
              </div>
            </div>
            <div class="mb-3">
              <label class="form-label">Hobbies</label>
              <div>
                <input type="checkbox" name="hobbies" value="Cricket" /> Cricket
                <input type="checkbox" name="hobbies" value="Football" /> Football
                <input type="checkbox" name="hobbies" value="Chess" /> Chess
              </div>
            </div>
            <div class="mb-3">
              <input type="password" class="form-control" name="password" placeholder="Password" required />
            </div>
            <div class="text-center">
              <button type="submit" class="btn btn-primary">Register</button>
            </div>
          </form>
        </div>
      </div>
    </main>

    <!-- FOOTER -->
    <%@ include file="footer.jsp" %>

    <script src="../public/js/bootstrap.bundle.min.js"></script>
  </body>
</html>

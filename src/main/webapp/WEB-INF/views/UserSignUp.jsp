<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>User Sign Up</title>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: "Poppins", sans-serif;
    }

    body {
      height: 100vh;
      width: 100%;
      align-items: center;
      display: flex;
      justify-content: center;
      background-image: radial-gradient(
        circle farthest-corner at 10% 20%,
        rgba(253, 101, 133, 1) 0%,
        rgba(255, 211, 165, 1) 90%
      );
    }

    .container {
      display: flex;
      align-items: center;
      justify-content: center;
    }

    .card {
      border-radius: 10px;
      box-shadow: 0 5px 10px 0 rgba(0, 0, 0, 0.3);
      width: 600px;
      height: auto;
      background-color: #ffffff;
      padding: 20px 30px;
    }

    .card_title {
      text-align: center;
      padding: 10px;
    }

    .card_title h1 {
      font-size: 26px;
      font-weight: bold;
    }

    .form {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
    }

    .form input {
      margin: 10px 0;
      width: calc(48% - 10px);
      background-color: #e2e2e2;
      border: 1px solid #ccc;
      outline: none;
      padding: 12px 20px;
      border-radius: 4px;
    }

    .form #dob {
      width: calc(100% - 10px);
    }

    .form button {
      background-color: #4796ff;
      color: #ffffff;
      font-size: 16px;
      outline: none;
      border-radius: 5px;
      border: none;
      padding: 10px 15px;
      width: 100%;
      margin-top: 10px;
      cursor: pointer;
    }

    .card_terms {
      display: flex;
      align-items: center;
      padding: 10px;
    }

    .card_terms input[type="checkbox"] {
      background-color: #e2e2e2;
    }

    .card_terms span {
      margin: 5px;
      font-size: 13px;
    }

    .card a {
      color: #4796ff;
      text-decoration: none;
    }
  </style>
</head>
<body>
  <div class="container">
    <div class="card">
      <div class="card_title">
        <h1>Create Account</h1>
        <span>Already have an account? <a href="/login">Sign In</a></span>
      </div>
      <div class="form">
        <form action="afterUserSignup" method="post">
          <input type="text" name="name" placeholder="Name" required />
          <input type="text" name="address" placeholder="Address" required />
          <input type="text" name="area" placeholder="Area" required />
          <input type="text" name="city" placeholder="City" required />
          <input type="email" name="email" placeholder="Email" required />
          <input type="password" name="password" placeholder="Password" required />
          <input type="number" name="pincode" placeholder="Pincode" required />
          <input type="tel" name="contact" placeholder="Contact" required />
          <input type="date" name="dob" id="dob" placeholder="Date of Birth" required />
          <button>Sign Up</button>
        </form>
      </div>
      <div class="card_terms">
        <input type="checkbox" name="" id="terms"> <span>I have read and agree to the <a href="#">Terms of Service</a></span>
      </div>
    </div>
  </div>
</body>
</html>

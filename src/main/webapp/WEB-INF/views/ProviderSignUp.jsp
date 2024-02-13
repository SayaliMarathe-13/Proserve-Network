<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Provider Sign Up</title>
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
      overflow-y: auto; 
      padding: 20px;
    }

    .container {
  display: flex;
  align-items: center;
  justify-content: center;
  margin-top: 30vh; /* Added more margin at the top */
  margin-bottom: 10vh; /* Added more margin at the bottom */
}

.card {
  margin: 20px auto; /* Add margin to the top and bottom */
  border-radius: 10px;
  box-shadow: 0 5px 10px 0 rgba(0, 0, 0, 0.3);
  width: 100%; /* Adjusted width to 80% of the parent container */
  max-width: 800px; /* Added max-width to ensure it doesn't get too wide */
  background-color: #ffffff;
  padding: 20px 30px;
  height:auto;
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
  margin-top: 20px;
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
}

.form input {
  margin: 10px 0;
  width: calc(33.33% - 10px); /* Updated width to fit 3 fields in one row with 1 cm distance */
  background-color: #e2e2e2;
  border: 1px solid #ccc;
  outline: none;
  padding: 12px 10px; /* Adjusted padding */
  border-radius: 4px;
  box-sizing: border-box; /* Added box-sizing property */
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
    .form select {
	  margin: 10px 0;
	  width: calc(33.33% - 10px);
	  background-color: #e2e2e2;
	  border: 1px solid #ccc;
	  outline: none;
	  padding: 12px 10px;
	  border-radius: 4px;
	  box-sizing: border-box;
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
        <span>Already have an account? <a href="/ProServe_Network/providerLogin">Sign In</a></span>
      </div>
      <div class="form">
        <form action="afterProviderSignup" method="post">
          <input type="text" name="name" placeholder="Name" required />
          <input type="text" name="address" placeholder="Address" required />
          <input type="text" name="area" placeholder="Area" required />
          <input type="text" name="city" placeholder="City" required />
          <input type="email" name="email" placeholder="Email" required />
          <input type="password" name="password" placeholder="Password" required />
          <input type="text" name="pincode" placeholder="Pincode" required />
          <input type="tel" name="contact" placeholder="Contact" required />
          <input type="date" name="dob" id="dob" placeholder="Date of Birth" required />
          <input type="text" name="age" placeholder="Age" required />
		  <select name="ServiceType" id="serviceType" required>
		  <option value="" disabled selected>Select service type</option>
		  <option value="full-time">Full-Time</option>
		  <option value="part-time">Part-Time</option>
		  </select>
          <select name="category" id="category" required>
		  <option value="" disabled selected>Select a category</option>
		  <option value="plumbing">Plumber</option>
		  <option value="carpenter">Carpenter</option>
		  <option value="childminder">Childminder(nanny)</option>
		  <option value="interior">Interior</option>
		  <option value="cleaner">Cleaning</option>
		   <option value="electrician">Electrician</option>
	      </select>
          <input type="text" name="openTime" placeholder="Open Time" required />
          <input type="text" name="closeTime" placeholder="Close Time" required />
          <input type="text" name="latitute" placeholder="Latitude" required />
          <input type="text" name="longitude" placeholder="Longitude" required />
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

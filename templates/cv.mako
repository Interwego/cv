<%
    personal = data['cv']['personal']
%>

<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
  <meta charset="utf-8">
  <title>Jens Willemsens</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/skeleton-framework/1.1.1/skeleton.min.css" integrity="sha256-nXC6R0O+3ez3B440sqRACd9wvr4A1cHmzr1K+2bINzk=" crossorigin="anonymous" />
  <style media="screen">
    .text-center {
      text-align: center
    }

    .title {
      font-size: 2.4rem;
      line-height: 1.35;
      padding-top: 1rem
    }

    .card {
      box-shadow: 0 4px 8px 0 #CCC;
      margin-bottom: 20px;
      margin-top: 20px
    }

    .personal {
      padding-top: 25px
    }

    /* #contact {
      border-bottom: 1px solid #efefef
    } */

    #avatar {
      margin-bottom: 5px
    }

    #avatar img {
      border-radius: 100%;
      width: 90%;
      max-width: 300px;
      margin-left: 5%;
      margin-right: 5%;
      margin-bottom: 5px
    }

    /* #contact #name {
      font-size: 3rem;
      margin-bottom: 5px
    }

    #contact #email {
      font-size: 1.2em;
      text-decoration: none;
      margin-bottom: 0
    } */

    #interests p.title {
      margin-bottom: 0
    }

    #interests p {
      padding-left: 20px;
      padding-right: 20px
    }

    .project {
      margin: 0 2rem 2rem 2rem
    }

    .project .title {
      margin-bottom: 0
    }

    .project .project-logo {
      max-width: 800px;
      min-width: 150px;
      width: 33%
    }

    #to-top {
      width: 100%
    }
  </style>
</head>

<body>
  <div class="container">

    <div class="row">
      <div class="twelve columns">
        <h1>Curriculum vitae</h1>
      </div>
    </div>

    <div class="card">
      <div class="row">
        <div class="one-third columns personal">
          <div class="text-center">
            <p id="avatar"><img src="https://jensw.be/images/jens.jpg" title="Jens Willemsens" alt="Jens Willemsens"></p>
          </div>
        </div>
        <div class="two-thirds columns personal">
          <h2>Jens&nbsp;Willemsens</h2>
          <p>${personal['address']}</p>
          <p>${personal['telephone']}</p>
          <p><a href="mailto:${personal['email']}">${personal['telephone']}</a></p>
        </div>
      </div>
    </div>

    <div class="card">
      <div class="row">
        <div class="twelve columns">
          <div class="project">
            <div class="text-center"><img class="project-logo" src="images/klokracing.png" title="Scooters en brommers Klokracing">
              <p class="title">KLOK-RACING</p>
              <p>Frontend and backend - <a href="https://klokracing.be" target="_blank">https://klokracing.be</a></p>
              <p>Local scooter and moped store. Website including used parts and scooters showcase.</p>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="row">
      <div class="twelve columns">
        <p><a class="button button-primary" href="#top" id="to-top" title="To top of page">To top</a></p>
      </div>
    </div>
  </div>
</body>

</html>

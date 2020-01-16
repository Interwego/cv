<%
    personal = data['cv']['personal']

    def link(url, desc):
      return "<a href=\"{}\" target=\"_blank\">{}</a>".format(url, desc)

    def github_url(repo):
      return "https://github.com/{}/{}".format(personal['github'], repo)

    def github_link(repo, desc):
      return link(github_url(repo), desc)
%>

<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
  <meta charset="utf-8">
  <title>Jens Willemsens</title>
  <link href="https://jensw.be/assets/favicon/favicon-32x32.png" rel="icon" sizes="32x32" type="image/png">
  <link href="https://jensw.be/assets/favicon/favicon-96x96.png" rel="icon" sizes="96x96" type="image/png">
  <link href="https://jensw.be/assets/favicon/favicon-16x16.png" rel="icon" sizes="16x16" type="image/png">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/skeleton-framework/1.1.1/skeleton.min.css" integrity="sha256-nXC6R0O+3ez3B440sqRACd9wvr4A1cHmzr1K+2bINzk=" crossorigin="anonymous" />
  <style media="screen">
    .text-center {
      text-align: center;
    }

    .text-bold {
      font-weight: bold;
    }

    .card {
      box-shadow: 0 4px 8px 0 #CCC;
      margin-bottom: 20px;
      margin-top: 20px;
    }

    .personal {
      padding-top: 25px;
    }

    #avatar {
      margin-bottom: 5px;
    }

    #avatar img {
      border-radius: 100%;
      width: 90%;
      max-width: 300px;
      margin-left: 5%;
      margin-right: 5%;
      margin-bottom: 5px;
    }

    #to-top {
      width: 100%;
    }
  </style>
</head>

<body>
  <div class="container">

    <div class="row">
      <div class="twelve columns">
        <h1 class="text-center">Curriculum vitae</h1>
      </div>
    </div>

    <div class="card">
      <div class="row">
        <div class="five columns personal">
          <p id="avatar" class="text-center">
            <img src="https://jensw.be/images/jens.jpg" title="Jens Willemsens" alt="Jens Willemsens">
          </p>
        </div>
        <div class="seven columns personal">
          <h2>Jens Willemsens</h2>
          <p></i> ${personal['address']}</p>
          <p>${personal['telephone']}</p>
          <p><a href="mailto:${personal['email']}">${personal['email']}</a></p>
          <p>GitHub: ${github_link('', personal['github'])}</p>

        </div>
      </div>
    </div>

    <div class="card">
      <div class="row">
        <div class="twelve columns">
          <h2>Summary</h2>
        </div>
      </div>

      <div class="row">
        <div class="four columns">
          <p class="text-bold">Personal experience</p>
          <ul>
            <li>Linux (8+ years)</li>
            <li>Docker (2+ years)</li>
            <li>Kubernetes</li>
            <li>Python</li>
            <li>Web development</li>
            <li>CI/CD</li>
          </ul>
        </div>

        <div class="four columns">
          <p class="text-bold">Professional experience</p>
          <ul>
            <li>Scrum / Agile</li>
            <li>Sector: Utilities, Products</li>
            <li>SAP BW (3+ years)</li>
            <li>SAP HANA (1 year)</li>
            <li>SAP BO</li>
            <li>SAS</li>
          </ul>
        </div>

        <div class="four columns">
          <p class="text-bold">Certifications</p>
          <ul>
            <li>${link('https://lpi.org/v/LPI000303301/lptxml5wps', 'LPI Essentials')}</li>
            <li>ITIL Foundation</li>
            <li>${link('https://www.youracclaim.com/badges/67abd278-aca5-45fd-b1cd-dc01266ff297/public_url', 'SAP Certified Application Associate: BW/4HANA')}</li>
            <li>SAP Support Consultant Qualification</li>
          </ul>
        </div>
      </div>
    </div>

    <div class="card">
      <div class="row">
        <div class="twelve columns">
          <h2>Personal experience</h2>
        </div>
      </div>

      <div class="row">
        <div class="twelve columns">
          <p class="text-bold">Linux</p>
          <p>
            I'm using Linux as my day-to-day driver for over 8 years.
            During this periode, I used following distro's:
          </p>
          <ul>
            <li>Ubuntu: ${github_link('lionkube', 'Kubernetes cluster')}, desktop, HTPC</li>
            <li>CoreOS: ${github_link('pumba', 'VPS')} and ${github_link('olaf', 'NAS')}</li>
            <li>Rancher OS: ${github_link('flash', 'Raspberry Pi')}</li>
            <li>Fedora: Desktop</li>
            <li>Arch: Desktop</li>
          </ul>

          <p class="text-bold">Docker and Kubernetes</p>
          <p>
            I started using Docker in 2017 to replace some "traditionally" installed
            personal services. This was mainly due to the ease of deployment and
            maintainability containerization offers. To have a consistent configuration,
            I used Docker Compose.
          </p>

          <p>
            This setup was used for a ${github_link('pumba', 'VPS')} and
            ${github_link('olaf', 'NAS')} running CoreOS.
          </p>

          <p>
            Two months ago, I decided it was time to step it up a notch and started
            following online trainings for Kubernetes. To convert this theory into
            hands-on knowledge, I decided to port all services from my VPS to a
            ${github_link('lionkube', 'Kubernetes cluster')}. Setting up and
            fine-tuning the cluster gave me insights into real life issues and
            how to resolve them.
          </p>

          <p class="text-bold">Python</p>
          <ul>
            <li>
              ${github_link('python-melthon', 'Melthon')}: Minimal templating
              framework to generate websites. E.g.
              ${github_link('melthon-tuinfeestbeerse', 'TuinfeestBeerse.be')}
            </li>
            <li>
              ${github_link('imap-alerter', 'IMAP alerter')}: Simple watcher for
              IMAP mailboxes. This service will send notification mails to a
              secondary mailbox when a new mail arrives.
            </li>
          </ul>

          <p class="text-bold">CI/CD</p>
          <ul>
            <li>
              ${link('https://travis-ci.org/JenswBE/imap-alerter', 'Multi arch Docker builds')}:
              On each GitHub commit, the Docker image will automatically be built for
              ${link('https://hub.docker.com/r/jenswbe/imap-alerter/tags', 'multiple architectures')}.
            </li>
            <li>
              ${link('https://circleci.com/gh/JenswBE/melthon-tuinfeestbeerse/tree/master', 'Melthon rendering')}:
              The website on GitHub Pages will automatically be rerendered for
              each commit to the master branch.
            </li>
          </ul>
        </div>
      </div>
    </div>

    <div class="card">
      <div class="row">
        <div class="twelve columns">
          <h2>Work experience</h2>
        </div>
      </div>

      <div class="row">
        <div class="three columns">
          <p>16/09/2016 - Present</p>
        </div>
        <div class="nine columns">
          <h3>BI consultant (SAP BW, HANA, SAP BO and SAS)</h3>
          <p>Accenture, Brussels (Belgium)</p>

        </div>
      </div>
    </div>

    <div class="card">
      <div class="row">
        <div class="twelve columns">
          <h2>Education and Training</h2>
        </div>
      </div>

      <div class="row">
        <div class="three columns">
          <p>16/09/2016 - Present</p>
        </div>
        <div class="nine columns">
          <h3>BI consultant (SAP BW, HANA, SAP BO and SAS)</h3>
          <p>Accenture, Brussels (Belgium)</p>

        </div>
      </div>
    </div>

    <div class="card">
      <div class="row">
        <div class="twelve columns">
          <h2>Certifications</h2>
        </div>
      </div>

      <div class="row">
        <div class="twelve columns">
          <h3>BI consultant (SAP BW, HANA, SAP BO and SAS)</h3>
          <p>Accenture, Brussels (Belgium)</p>
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

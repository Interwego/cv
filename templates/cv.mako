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
          <p>${personal['address']}</p>
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
            <li>JavaScript</li>
          </ul>
        </div>

        <div class="four columns">
          <p class="text-bold">Professional experience</p>
          <ul>
            <li>Scrum / DevOps</li>
            <li>Sector: Utilities, Products</li>
            <li>SAP BW (3+ years)</li>
            <li>SAP HANA (1 year)</li>
            <li>Spotfire</li>
            <li>SAP BO</li>
            <li>SAS</li>
          </ul>
        </div>

        <div class="four columns">
          <p class="text-bold">Certifications</p>
          <ul>
            <li>${link('https://www.youracclaim.com/badges/67abd278-aca5-45fd-b1cd-dc01266ff297/public_url', 'SAP Certified Application Associate: BW/4HANA')}</li>
            <li>SAP Support Consultant Qualification</li>
            <li>ITIL Foundation</li>
            <li>${link('https://lpi.org/v/LPI000303301/lptxml5wps', 'LPI Essentials')}</li>
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
            During this period, I used following distro's:
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
            maintainability which containerization offers. To have a consistent
            configuration, I used Docker Compose.
          </p>

          <p>
            This setup was used for a ${github_link('pumba', 'VPS')} and
            ${github_link('olaf', 'NAS')} running CoreOS.
          </p>

          <p>
            Two months ago, I decided it was time to take it up a notch and started
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
              ${link('https://travis-ci.org/JenswBE/imap-alerter', 'Multiarch Docker builds (Travis CI)')}:
              On each GitHub commit, the Docker image will automatically be built for
              ${link('https://hub.docker.com/r/jenswbe/imap-alerter/tags', 'multiple architectures')}.
            </li>
            <li>
              ${link('https://circleci.com/gh/JenswBE/melthon-tuinfeestbeerse/tree/master', 'Melthon rendering (CircleCI)')}:
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
        <div class="twelve columns">
          <h3>Accenture: Technical BI consultant</h3>
        </div>
      </div>

      <div class="row">
        <div class="three columns">
          <p>April 2019 - Present</p>
        </div>
        <div class="nine columns">
          <p class="text-bold">SAP BW on HANA, SAP HANA and Spotfire in Products sector</p>
          <p>Roles &amp; Responsibilities:</p>
          <ul>
            <li>Development of new reporting requirements in a DevOps setup</li>
            <li>Impact analysis of SAP ECC upgrade to S/4HANA</li>
            <li>Improving team efficiency by creating helpers
              (e.g. ${link('https://hana-tools.jensw.be/cv-renamer.html', 'CV Renamer')})
              and documentation</li>
            <li>Train and support client employees on technical aspects of SAP BW on HANA</li>
        </div>
      </div>

      <div class="row">
        <div class="three columns">
          <p>February 2018 - April 2019</p>
        </div>
        <div class="nine columns">
          <p class="text-bold">BI team lead</p>
          <p>Roles &amp; Responsibilities:</p>
          <ul>
            <li>Follow-up and guidance for incidents and changes</li>
            <li>Capacity and risk management</li>
            <li>Managing and coaching onshore and offshore teams (5 persons)</li>
            <li>Communication towards management regarding current performance and progress</li>
          </ul>
        </div>
      </div>

      <div class="row">
        <div class="three columns">
          <p>September 2016 - April 2019</p>
        </div>
        <div class="nine columns">
          <p class="text-bold">SAP BW, SAP BO and SAS in Utilities sector</p>
          <p>Roles &amp; Responsibilities:</p>
          <ul>
            <li>Maintenance and support for SAP BW, SAP BO and SAS</li>
            <li>Support for critical reporting</li>
            <li>Optimization of current setup by proposing structural improvements</li>
            <li>End-to-end implementation of new business requirements</li>
            <li>SPOC: Discussing incidents, changes and problems with a focus on
              stability, client satisfaction and proactive problem solving</li>
          </ul>
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
        <div class="two columns">
          <p>2019</p>
        </div>
        <div class="nine columns">
          <p>${link('https://www.youracclaim.com/badges/67abd278-aca5-45fd-b1cd-dc01266ff297/public_url', 'SAP Certified Application Associate: BW/4HANA')}</p>
        </div>
      </div>

      <div class="row">
        <div class="two columns">
          <p>2018</p>
        </div>
        <div class="nine columns">
          <p>SAP Support Consultant Qualification</p>
        </div>
      </div>

      <div class="row">
        <div class="two columns">
          <p>2017</p>
        </div>
        <div class="nine columns">
          <p>ITIL Foundation</p>
        </div>
      </div>

      <div class="row">
        <div class="two columns">
          <p>2014</p>
        </div>
        <div class="nine columns">
          <p>${link('https://lpi.org/v/LPI000303301/lptxml5wps', 'LPI Essentials')}</p>
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
        <div class="two columns">
          <p>2019</p>
        </div>
        <div class="ten columns">
          <p class="text-bold">SAP BW/4HANA (BW462)</p>
        </div>
      </div>

      <div class="row">
        <div class="two columns">
          <p>2017</p>
        </div>
        <div class="ten columns">
          <p class="text-bold">openSAP: SAP Business Warehouse powered by SAP HANA</p>
        </div>
      </div>

      <div class="row">
        <div class="two columns">
          <p>2013 - 2016</p>
        </div>
        <div class="ten columns">
          <p class="text-bold">Bachelor in Applied Computer Science</p>
          <p>Thomas More, Geel (Belgium)</p>
          <p>Specialization: Business Intelligence</p>
        </div>
      </div>
    </div>

    <div class="card">
      <div class="row">
        <div class="twelve columns">
          <h2>Communication skills</h2>
        </div>
      </div>

      <div class="row">
        <div class="two columns">
          <p class="text-bold">Dutch</p>
        </div>
        <div class="ten columns">
          <p>Mother tongue</p>
        </div>
      </div>

      <div class="row">
        <div class="two columns">
          <p class="text-bold">English</p>
        </div>
        <div class="ten columns">
          <p>Fluent</p>
        </div>
      </div>

      <div class="row">
        <div class="two columns">
          <p class="text-bold">French</p>
        </div>
        <div class="ten columns">
          <p>Basic</p>
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

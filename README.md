## Usage

    layman -f
    layman -a scrill

## Content

    app-admin {

      reprepro {
        version     => "4.3.0-r1",
        description => "Debian repository creator and maintainer application",
        homepage    => "http://packages.debian.org/reprepro"
      }

      aws-sns-tools {
        version     => "1.0.3.3",
        description => "Command Line Interface Tool for Amazon Simple Notification Service",
        homepage    => "http://aws.amazon.com/developertools/3688"
      }

      aws-cw-tools {
        version     => "1.0.13.4",
        description => "The API tools serve as the client interface to the Amazon CloudWatch web service",
        homepage    => "http://aws.amazon.com/developertools/2534"
      }

      aws-elb-tools {
        version     => "1.0.17.0",
        description => "The API tools serve as the client interface to the Elastic Load Balancing web service",
        homepage    => "http://aws.amazon.com/developertools/2536"
      }

      aws-as-tools {
        version     => "1.0.61.2",
        description => "The API tools serve as the client interface to the Auto Scaling web service",
        homepage    => "http://aws.amazon.com/developertools/2535"
      }

      aws-cfn-tools {
        version     => "1.0.11",
        description => "The command line tools serve as the client interface to the AWS CloudFormation web service",
        homepage    => "http://aws.amazon.com/developertools/2555753788650372"
      }

      awscli {
        version     => "1.0.0",
        description => "Universal Command Line Environment for AWS",
        homepage    => "https://github.com/aws/aws-cli https://pypi.python.org/pypi/awscli"
      }

      aws-rds-tools {
        version     => "1.10.003",
        description => "The Command Line Toolkit for the Amazon Relational Database Service",
        homepage    => "http://aws.amazon.com/developertools/2928"
      }

      aws-iam-tools {
        version     => "1.5.0",
        description => "The Command Line Interface (CLI) for the AWS Identity and Access Management (IAM) Service",
        homepage    => "http://aws.amazon.com/developertools/4143"
      }

      aws-cfn-bootstrap {
        version     => "1.3",
        description => "Bootstrap scripts for AWS CloudFormation",
        homepage    => "http://aws.amazon.com/developertools/4026240853893296"
      }

      amazon-ec2-init {
        version     => "20110331",
        description => "Init script to setup Amazon EC2 instance parameters",
        homepage    => "http://www.gentoo.org/"
      }

    }

    app-backup {

      insync {
        version     => "1.2.7-r1",
        description => "Advanced cross-platform Google Drive client",
        homepage    => "https://www.insynchq.com/"
      }

    }

    app-crypt {

      tpmmanager {
        version     => "0.8.1-r1",
        description => "TPM management software providing an easy to use graphical user interface",
        homepage    => "http://projects.sirrix.com/trac/tpmmanager"
      }

    }

    app-editors {

      komodo-edit-bin {
        version     => [ "6.1.3-r1", "7.0.0" ],
        description => "Freeware advanced editor for dynamic and Web languages",
        homepage    => "http://www.activestate.com/products/komodo_edit"
      }

      geppetto {
        version     => "2.1.0",
        description => "An integrated toolset for developing puppet modules and manifests",
        homepage    => "http://cloudsmith.github.com/geppetto"
      }

      sublime-text {
        version     => "2.0.1",
        description => "Sublime Text is a sophisticated text editor for code, html and prose",
        homepage    => "http://www.sublimetext.com"
      }

    }

    app-laptop {

      tp_smapi {
        version     => "9999",
        description => "IBM ThinkPad SMAPI BIOS driver",
        homepage    => "https://github.com/evgeni/tp_smapi/ http://tpctl.sourceforge.net/"
      }

      lenovo-sl-laptop {
        version     => "9999",
        description => "Linux kernel support for the Lenovo SL series ThinkPads",
        homepage    => "http://github.com/tadzik/lenovo-sl-laptop"
      }

    }

    app-misc {

      tnote {
        version     => "0.2.1",
        description => "A small note taking program for the terminal",
        homepage    => "http://sourceforge.net/projects/tnote/"
      }

    }

    app-shells {

      zsh-completions {
        version     => "9999",
        description => "Additional completion definitions for Zsh",
        homepage    => "https://github.com/zsh-users/zsh-completions"
      }

    }

    dev-python {

      bcdoc {
        version     => "0.9.0",
        description => "ReST document generation tools for botocore",
        homepage    => "https://github.com/boto/bcdoc https://pypi.python.org/pypi/bcdoc"
      }

      jmespath {
        version     => "0.0.2",
        description => "JSON Matching Expressions",
        homepage    => "https://github.com/boto/jmespath https://pypi.python.org/pypi/jmespath"
      }

      colorama {
        version     => "0.2.5",
        description => "Makes ANSI escape character sequences, for producing colored",
        homepage    => "http://code.google.com/p/colorama/"
      }

      botocore {
        version     => "0.16.0",
        description => "Low-level, data-driven core of boto 3",
        homepage    => "https://github.com/boto/botocore https://pypi.python.org/pypi/botocore"
      }

    }

    dev-ruby {

      fog {
        version     => "1.1.1",
        description => "The Ruby cloud services library",
        homepage    => "http://fog.io/"
      }

      excon {
        version     => "0.7.6",
        description => "EXtended http(s) CONnections",
        homepage    => "https://github.com/geemus/excon"
      }

      zabbixapi {
        version     => "0.1.4-r1",
        description => "Ruby module for work with Zabbix API",
        homepage    => "http://github.com/verm666/RubyZabbixApi"
      }

      formatador {
        version     => "0.2.1",
        description => "STDOUT text formatting",
        homepage    => "https://github.com/geemus/formatador"
      }

      zabbix {
        version     => "0.4.0",
        description => "Send data to Zabbix from Ruby",
        homepage    => "https://github.com/mhat/zabbix-rb"
      }

      aws-ses {
        version     => "0.4.3",
        description => "Client library for Amazon's Simple Email Service's REST API",
        homepage    => "https://github.com/drewblas/aws-ses"
      }

    }

    kde-base {

      kdebase-runtime-meta {
        version     => "4.11.2-r1",
        description => "Merge this to pull in all kdebase-runtime-derived packages",
        homepage    => ""
      }

      plasma-workspace {
        version     => "4.11.2-r1",
        description => "Plasma: KDE desktop framework",
        homepage    => ""
      }

    }

    kde-misc {

      kaption {
        version     => "0.1.1-r3",
        description => "A KDE utility similar to Jing or Skitch not yet as powerful as them",
        homepage    => "http://opendesktop.org/content/show.php?content=139302"
      }

    }

    media-gfx {

      yed {
        version     => "3.11.1",
        description => "Powerful diagram editor that can be used to generate high-quality drawings of diagrams.",
        homepage    => "http://www.yworks.com/en/products_yed_about.html"
      }

      splash-themes-livecd {
        version     => "2010.0",
        description => "Gentoo theme for gensplash consoles",
        homepage    => "http://www.gentoo.org/"
      }

    }

    metadata {

    }

    net-im {

      qutim {
        version     => "0.2.0-r4",
        description => "New Qt4-based Instant Messenger (ICQ).",
        homepage    => "http://www.qutim.org"
      }

      skype {
        version     => "4.3.0.37-r1",
        description => "P2P Internet Telephony (VoiceIP) client",
        homepage    => "http://www.skype.com/"
      }

    }

    net-misc {

      udpxy {
        version     => "1.0.21-r2",
        description => "Daemon to relay multicast UDP traffic to client's TCP (HTTP) connection",
        homepage    => "http://sourceforge.net/projects/udpxy"
      }

      rabbitmq-stomp-plugin {
        version     => [ "2.5.1", "2.6.1" ],
        description => "RabbitMQ STOMP plugin.",
        homepage    => "http://www.rabbitmq.com/plugins.html#rabbitmq-stomp"
      }

      mirall {
        version     => "1.1.0-r1",
        description => "Synchronization of your folders with another computers",
        homepage    => "http://owncloud.org/"
      }

    }

    virtual {

      aws-tools {
        version     => "0",
        description => "Virtual for AWS tools",
        homepage    => ""
      }

    }

    x11-misc {

      nevernote {
        version     => "0.99",
        description => "An open source Evernote clone",
        homepage    => "http://nevernote.sourceforge.net/index.htm"
      }

      qomodoro {
        version     => "0.1-r1",
        description => "Cross-platform pomodoro timer written in C++ using Qt4",
        homepage    => "http://sourceforge.net/p/qomodoro/"
      }

    }

    x11-themes {

      milky {
        version     => [ "2.0-r2", "2.0_alpha2-r2" ],
        description => "Icon theme for KDE 4 designed by Banu Onal",
        homepage    => "http://kde-look.org/content/show.php/Milky?content=133124"
      }

      qutim-kolobok {
        version     => "0.0.2",
        description => "Kolobok smile pack for net-im/qutim",
        homepage    => "http://www.qutim.org"
      }

    }

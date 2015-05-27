# gamr-system

On startup everything under this directory will be mapped through Apache
at http://localhost:4567/ .

Startup of the sample Flask application requires a manual step to 

    cd /vagrant/gamr-api
    python main.py

Setup of Apache should be complete but may require the following:

    sudo a2enmod proxy
    sudo service apache2 restart
    sudo cp gamr-api.conf /etc/apache2/sites-available/gamr-api
    a2ensite gamr-api
    sudo service apache2 reload


## Validation

From the host environment the following should render: 

- http://localhost:4567/ 

From the provisioned environment the following should be available: 

- http://localhost:5678/api

    $ curl http://localhost:5000/api/validate/existing/:gamer/:game
    {
      "data": "true",
      "game": ":game",
      "gamer": ":gamer"
    }



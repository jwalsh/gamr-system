# gamr-system

On startup everything under this directory will be mapped through Apache
at http://localhost:4567/ .

Startup of the sample Flask application requires a manual step to 

    cd /vagrant/gamr-api
    python main.py

## Validation

- Web http://localhost:4567/gamr-www 
- API http://localhost:5678/api

    $ curl http://localhost:5000/api/validate/existing/:gamer/:game
    {
      "data": "true",
      "game": ":game",
      "gamer": ":gamer"
    }



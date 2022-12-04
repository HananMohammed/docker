# docker

### docker commands
<ol>
    <pre style=" padding: 16px;overflow: auto;font-size: 85%;background-color: #393f49;color: #ffffff;border-radius: 6px;">
        <code>
            <li>docker build -t express-node-app .</li>
            <li>docker image ls</li>
            <li>docker rm express-node-app-container -f</li>
            <li>docker stop express-node-app-container </li>
            <li>docker run --name express-node-app-container -d express-node-app</li>
            <li>docker exec -it express-node-app-container bash</li>
        </code>
    </pre>
</ol>

### docker local development and hotreload & volums
<ol>
    <pre style=" padding: 16px;overflow: auto;font-size: 85%;background-color: #393f49;color: #ffffff;border-radius: 6px;">
        <code>
            <li>docker build -t express-node-app .</li>
            <li>docker logs express-node-app-container</li>
            <li>docker run --name express-node-app-container -v /media/hanona/01D61E3B2237E300/node-app:/app -d -p 4000:4000 express-node-app</li>
        </code>
    </pre>
</ol>

### docker volums
<ol>
    <pre style=" padding: 16px;overflow: auto;font-size: 85%;background-color: #393f49;color: #ffffff;border-radius: 6px;">
        <code>
             <li>Two way binding : docker run --name express-node-app-container -v ${pwd}:/app -d -p 4000:4000 express-node-app</li>
            <li>ONe way binding : docker run --name express-node-app-container -v ${pwd}:/app:wo -d -p 4000:4000 express-node-app</li>
            <li>Anonymous Volums : docker run --name express-node-app-container -v ${pwd}:/app:ro -v /app/node_modules -d -p 4000:4000 express-node-app</li>
            <li>Best practice : docker run --name express-node-app-container -v $(pwd)/src:/app/src:ro -d -p 4000:4000 express-node-app</li>
        </code>
    </pre>
</ol>

## docker Compose
### docker compose is utitlity comming with docker but not included inside docker 
<ol>
    <pre style=" padding: 16px;overflow: auto;font-size: 85%;background-color: #393f49;color: #ffffff;border-radius: 6px;">
        <code>
             <li>docker compose up -d</li>
        </code>
    </pre>
</ol>

## Docker Environments (Dev, Prod, ...)
### Run project on multi development 
<ol>
    <pre style=" padding: 16px;overflow: auto;font-size: 85%;background-color: #393f49;color: #ffffff;border-radius: 6px;">
        <code>
             <li>docker compose  -f docker-compose.yml -f docker-compose.dev.yml up -d</li>
             <li>to rebuild image add flag --build</li>
        </code>
    </pre>
</ol>
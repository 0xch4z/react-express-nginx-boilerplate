## React Express Nginx Boilerplate
A boilerplate for creating isomorphic web applications using react, nextjs, express, and nginx.

### How it works
The boilerplate contains two seperated node applications as their own npm packages: the React app and the Express api. To run the app, run the [scripts](#scripts) of the root npm package. When you're ready to [deploy](Deploying-to-production-server) the app to your production server, run the bootstrap script to easily bootstrap a simple nginx reverse proxy config to your react app and your express api.

### Developing your application
1. Clone the repository.
   ```bash
     $ git clone https://github.com/charliekenney23/react-express-nginx-boilerplate.git
   ```
2. Install dependencies recursively (for client & api).
   ```bash
     $ npm run deps
   ```
3. Run for development.
   ```bash
     $ npm run dev
   ```

### Deploying to production server
1. Clone your repository on your server.
   ```bash
     $ git clone ssh://git@github.com/<user>/<repository name>.git ~/app
   ```
2. Install dependencies recursively (for client & api).
   ```bash
     $ npm run deps
   ```
3. Build the app.
   ```bash
     $ npm run build
   ```
4. Bootstrap the nginx config.
   ```bash
     $ npm bootstrap
   ```
5. Reload / start nginx.
   ```bash
     $ sudo service nginx start 
   ```
6. Run the server as a service.
   ```
     $ npm start
   ```
7. Test it out!
   ```bash
     # client
     $ curl http://your.ip.addr
     # api
     $ curl http://your.ip.addr/api
   ```
   
### Scripts
#### Install dependencies recursively
```
  $ npm run deps
```
#### Remove dependencies recursively
```
  $ npm run rmdeps
```
#### Run the application for development
```
  $ npm run dev
```
#### Run the application as a service
```
  $ npm start
```
#### Stop the application as a service
```
  $ npm run stop
```
#### Monitor the application as a service
```
  $ npm run monitor
```
#### Clean the application
```bash
  $ npm run clean
```


### The goal of this boilerplate
This boilerplate contains some useful tools for bootstrapping an isomorphic React application with an Express API. The aim of this boilerplate is providing a very barebones starter with only the essentials along with some build scripts to get up in running as fast as possible. *These scripts are patial to debain/ubuntu*.



@echo off
title MERN Stack setup!
echo 1)Git initialization
git init
echo Git initialization is completed
echo Press any key to continue....
pause
echo 2)Backend part
mkdir backend
cd backend
(
echo {
echo   "name": "backend",
echo   "version": "1.0.0",
echo   "description": "Backend part",
echo   "main": "index.js",
echo   "type": "module",
echo   "dependencies": {},
echo   "devDependencies": {},
echo   "scripts": {
echo     "start": "node index.js"
echo   },
echo   "author": "Madhav",
echo   "license": "ISC"
echo }
) > package.json
start /wait cmd /c "npm i dotenv express jsonwebtoken body-parser bcrypt cookie-parser mongoose uuid cors cross-env"
start /wait cmd /c "npm i nodemon --save-dev"
echo Backend dependencies installed successfully
echo Press any key to continue....
pause
echo 3)Folder structure
echo Index file creation
type nul > index.js
echo import app from "./app.js"; >> index.js
echo. >> index.js
echo app.listen(4000, ()=^>{ >> index.js
echo     console.log("Started at port: 4000"); >> index.js
echo }); >> index.js
echo Press any key to continue....
pause
echo App file creation
type nul > app.js
echo import cors from "cors"; >> app.js
echo import express from "express"; >> app.js
echo. >> app.js
echo const app=express(); >> app.js
echo. >> app.js
echo app.use(cors({ >> app.js
echo    origin: 'http://localhost:3000', >> app.js
echo    credentials: true, >> app.js
echo    methods: ['GET', 'POST', 'PUT', 'DELETE', 'OPTIONS'], >> app.js
echo    allowedHeaders: ['Content-Type', 'Authorization'], >> app.js
echo })); >> app.js
echo. >> app.js
echo export default app; >> app.js
echo Press any key to continue....
pause
echo Folder creation
mkdir models
mkdir routes
mkdir controllers
mkdir config
cd config 
type nul > config.env
cd ..
echo Folder creation completed successfully
cd ..
echo 4)Frontend part
start /wait cmd /c "npx create-react-app frontend"
cd frontend
start /wait cmd /c "npm i react-router-dom axios"
echo Frontend dependencies installed successfully
echo "Installation completed!!"
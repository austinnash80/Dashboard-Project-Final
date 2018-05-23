# Business Dashboard Final Project

Designed for internal use by the business employees. New users can only be created by the 'superadmin user' through the admin panel. The goal is to create a simple place to store and display data about customers/sales, status of ongoing tasks, marketing schedules, and other useful daily information.

Users with different roles have access to different information - ie. Admin role has access to full sales figures, User role only has access to customer names and sales ratio between products.

Site URL - https://dashboard-project-final.herokuapp.com

## Login info
* Admin role login - Email: chicken-admin@chicken.com Password: chicken
* User role login - Email: chicken-user@chicken.com Password: chicken

## configuration
* Built using Rails with progress database
* Sample sales data is being pulled from a rails API
* File storage with AWS S3
* uses one Vue.js component on the dashboard

### main gems used:
* devise
* rails_admin
* cancancan
* paperclip
* aws-sdk-s3
* pdfkit
* chartkick
* httparty

### Authors
GA Project built by Austin Nash wdi-26

### License
This project is licensed under the MIT License - see the LICENSE.md file for details

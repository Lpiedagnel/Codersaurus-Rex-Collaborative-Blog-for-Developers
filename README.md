# Codersaurus Rex - A Collaborative Blog by Developers, for Developers


## Project Origin

Codersaurus Rex is a website that allows programmers to submit articles about the world of programming, including specific technologies and lifestyle topics. These articles are then reviewed by the editorial team before being made accessible to everyone, free of charge and without any limitations.

This project primarily utilizes Symfony 6 along with Bootstrap 5 and SASS to add a touch of style.

![Homepage of Codersaurus](https://imgur.com/tcYilrX.png)


## Features of Codersaurus Rex

### When not logged in:
- View the latest articles
- Sort articles by category
- Search for an article
- Register and log in

### When logged in:
- Submit an article, with a form containing all necessary fields, a KDE text editor, and the ability to upload a header image
- Comment on articles
- View the profiles of other users and their respective articles
- Edit profile information, including avatar and password

### As an editor:
- Approve (or disapprove) submitted articles
- Edit articles already published
- Delete articles

### As an administrator:
- Create, edit, and delete categories in the EasyAdmin back-office
- Moderate users and comments

![Show article on Codersaurus Rex](https://imgur.com/UF8Blp1.png)


## Installation of Codersaurus Rex

1. Download the code from this GitHub repository, from the "Main" branch.

2. Install the database. For this installation, we'll import the `codersaurus_rex.sql` file located at the root of the folder into phpMyAdmin. This file contains sample data generated by DoctrineFixtures, including an admin account and an editor account.

3. Once you've confirmed that you have the "Composer" tool installed on your machine, navigate to the root of the folder and run the following command in your terminal:

`composer install`

This command installs all the necessary dependencies for the project to function. Note that the project is set to "prod" by default. If you want to develop, go to the `.env` file (at the root of the folder) and change the `APP_ENV=prod` to `APP_ENV=dev`.

4. Ensure that the database connection is configured in `.env` and modify the `DATABASE_URL` variable if necessary. By default, it is set to localhost with the previously imported database.

5. Congratulations! You can launch your server and use the application. If you have Symfony CLI installed on your machine, I recommend using the following command:

`symfony server:start`

This command will start a local server for Symfony. If the database exists and the connection is properly configured, you should be able to use the application. If you're using the test database, remember to replace the test articles with actual quality content!

If you intend to deploy the project to production, remember to change the `APP_SECRET`variable in the `.env` file. It secures various functionalities of the application (sessions, cookies, encryption, etc.).

![Add article on Codersaurus Rex](https://imgur.com/geujlAz.png)


## Accounts with Special Permissions

### For the administrator user:

Email: `admin@gmail.com`
Password: `test`

#### For the editor user:

Email: `editor@gmail.com`
Password: `test`

Naturally, I strongly recommend changing these passwords as soon as possible from the "Profile" menu, especially if you're using Codersaurus Rex in production.


## Possible Enhancements

At this stage, Codersaurus Rex is in the "Minimum Viable Product" stage. This means it's sufficiently complete to be launched and used. However, like any project, it can be improved based on user needs and practice.

- Implement email verification for registrations using mailer

- Allow sharing of articles on social media

- Introduce a gamification system to encourage contributions

- Community features such as chat, member space, forums, private messaging, etc., could be implemented. However, in 2023, these features are often replaced by alternatives like a Discord server.

In conclusion, Codersaurus Rex has been a fantastic opportunity for me to develop my Symfony skills and realize the potential of this framework, especially its capacity to evolve over time.

Thank you for your interest in this project, and I wish you happy coding!

![Edit user on Codersaurus Rex](https://imgur.com/dqhPRN2.png)
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

1. Download the code from this repository's "Main" branch.

2. From the project root, run `composer install` to install all PHP dependencies.

3. Still in the project root, run `npm install` and `npm run build` for Node.js dependencies.

4. Create a database named codersaurus_rex with the utf8mb4_unicode_ci collation.

5. To update the database structure, you have two options:
    * Import the codersaurus_rex.sql file provided in this repository into your database. This solution is faster for testing, but is not secure for a production environment.
    * Use `doctrine:migrations:migrate` at the project root to apply migrations. Next, use the command symfony console `doctrine:fixtures:load` to generate test data. I recommend this solution if you are using the application in production.


6. If you are not using a local server, create a .env.local file by copying the content of .env. Change the `APP_ENV` variable from `dev` to `prod`, update the key in `APP_SECRET`, and ensure the database access in `DATABASE_URL` is accurate.

7. If you are working in a localhost environment, the original .env file should suffice. If you have Symfony CLI installed, you can launch the Symfony server for testing by using the command: `symfony server:start`. This will start a local server for testing the application.

8. Enjoy!

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
## Authentication using bcrypt and passport

### Key terms and technologies

#### Storing passwords

One of the __worst__ possible things you can do as a developer is store a password in plain text. This means that when you take a password from a form you never want it to be stored so that someone can easily see it. Imagine if someone gets access to your database and can see every single password for all of your users. On top of that, most users have the same password for multiple sites so a password on one site can very possibly be the same for many other ones. So long story short - __NEVER STORE PASSWORDS IN PLAIN TEXT!__

#### Basic encryption - one way vs two way.

So how do we store passwords? We encrypt them. Before we talk about how that's done, let's examine different forms of encryption.

- Two way encryption - think of something like gibberish or pig latin or even a simple code that you made up with a friend to send a secret message. The important thing here is that both parties know how to decifer a message. This is easy to use, but imagine if someone else gets access to the key or knows how to decifer the code. This is why we don't use two way encryption for passwords. The only person who should ever know their password is the person who created, so we need a different way - enter one way encryption

- One way encryption - this is how we store passwords. This method also known as hashing and it only allows text to be deciphered by the person who knows the original text. For a password this is perfect. As developers we should never know or be able to figure out our users passwords. If they for some reason forget it, we just send them a link to reset the password.

#### bcrypt

The tool we use to hash passwords is called bcrypt. Bcrypt is a module based on the blowfish cipher. To install it we use `npm install --save bcrypt` and make sure to add `bcrypt = require("bcrypt")` when we want to use it in our code. Bcrypt provides functions for hashing, salting and comparing passwords.

#### Salting

Not only is it important to hash a password, we need to add an additional layer of security and we do that by adding salt. Salting provides an extra hash at the end of our password which makes it much much more difficult for someone to crack our password by inputing random strings.

You can read more about this [here](https://crackstation.net/hashing-security.htm)

#### Authentication

One of the most important concepts in building an application is authentication - the process of ensuring that our users are valid (actually exist in our database). We only want to grant access to certain pages for users who are not logged in. Imagine if you could access a banking website and see your account without logging in....that would be pretty disasterous because anyone would have access to it. By authenticating our users, we can make sure that only the right users have access to the right pages. Another example to think about would be if other facebook users could have access to __your__ settings page...that would be quite bad.

#### Passport

Passport is authentication middleware for express. It comes with a variety of "strategies" which enable us to build authentication using our own information (this is known as the "local" strategy) like a username or a password as well as leveraging other forms of authentication like OAuth (which enable us to log in via twitter, facebook, google, instagram etc.)

#### Serializing and Deserializing

Before we talk about these terms, think of this story. You go out to a bar and before you enter, they check your ID to make sure you're over 21 and if you are, they stamp your hand and let you in. 

The act of checking your ID and verifying your age is the process of authentication and very similar to what happens when a user tries to log in (we check their credentials just like the bartender checks your age).

Once the user is approved (bartender verifies you are over 21), your hand is stamped. Now anytime you go out and back into the bar, they will remember that you have been authenticated. This process of stamping your hand is what the Serialize function does. It is a one time thing that creates the hand stamp (or in the case of our web application, a session).

When you leave the bar and come back, the bartender checks your hand again to make sure you're authenticated. This is the process of deserialization. This happens on every page and is a very fast check to see if the user has been authenticated (or has that hand stamp). Once the user moves to another page, we will run the deserialize function again which checks if the session still exists and if the user is authenticated.

#### Cookie Session

This module allows us to store a tiny piece of session information in a cookie. This is how we are able to maintain state if our server goes down. This module depends on cookie-parser so we need to not only run `npm install --save cookie-session` but also `npm install --save cookie-session`. Serializing creates a session for us which is great for persisting accross pages. But when happens when our server goes down or we restart it? Without a cookie, we would have to force our user to log in again, which is not the best user experience - so in order to maintain state even when a server goes down, we use a cookie.

#### Connect Flash 

We use this express module to render flash messages that display errors


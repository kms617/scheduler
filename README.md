TO DO
[ ] dynamic URL rendering
[ ] pop ups for scheduling
[ ] hidden iFrame from BH pop up
[ ] unschedule (delete an appointment) option
[ ] integrate with Bullhorn API
[ ] refactor styling
[ ] form object to update user and appointment simultaneously
[ ] test coverage
[ ] protected recruiter namespacing
[ ] configure Action mailer
[ ] styling for errors
[ ] JavaScript awesomeness for appointment cards
[ ] engine for rendering custom portal
[ ] not an actual sign in/up, just a user creation on click

# Event Scheduler
An app for scheduling appointments at a career fair and adding them into Bullhorn via API integration.

The Story

A student at a career fair goes by your company's booth.  She wants to schedule a 1-on-1 with a screener, so she heads over to the tablet at the booth.  She sees a calendar of clickable appointments, displaying which ones are available over the next couple of days.  She clicks one that fits her schedule, enters her information, and books the appointment.  Once she books the appointment, she gets email confirmation and access to a portal for uploading her resume and any other information the company wants.

At the same time, once she enters her information into the scheduler app, a new candidate record is created for her in Bullhorn with her name, email, university, major, degree and graduation year.  If she chooses to upload her resume and other information, it is added to her record.

Finally, the recruiter gets an email notification that an appointment has been created once it's set up (he can turn these off). He also has a calendar inside of his Bullhorn with a list of all the upcoming appointments and links to each candidate's profile.

## Getting Started

After you have cloned this repo, run this setup script to set up your machine
with the necessary dependencies to run and test this app:

    % ./bin/setup

It assumes you have a machine equipped with Ruby, Postgres, etc. If not, set up
your machine with [this script].

[this script]: https://github.com/thoughtbot/laptop

You will also need Qt in order to use Capy-webkit. Set it up with homebrew using [this command].

[this command]: brew install qt --build-from-source

After setting up, you can run the application using [foreman]:

    % foreman start

If you don't have `foreman`, see [Foreman's install instructions][foreman]. It
is [purposefully excluded from the project's `Gemfile`][exclude].

[foreman]: https://github.com/ddollar/foreman
[exclude]: https://github.com/ddollar/foreman/pull/437#issuecomment-41110407

## Guidelines

Use the following guides for getting things done, programming well, and
programming in style.

* [Protocol](http://github.com/thoughtbot/guides/blob/master/protocol)
* [Best Practices](http://github.com/thoughtbot/guides/blob/master/best-practices)
* [Style](http://github.com/thoughtbot/guides/blob/master/style)

## Deploying

If you have previously run the `./bin/setup` script,
you can deploy to staging and production with:

    $ ./bin/deploy staging
    $ ./bin/deploy production

# Task Appointment

An appointment is a task that is executed on clock time. Cron syntax is used to define the time, and in case of recurring appointments, the frequency of the appointment.

A trigger function is called when an appointment is due. If a failure occurs during the execution of the trigger function, it will return an error. That error will be passed to the onError function.

{{#playpen task-appointment.bal}}

{{#playpen task-appointment.sh}}
# Task Timer

Timers are used to execute tasks periodically. A timer may have an initial delay & interval specified.
The delay specifies the delay between registering the task and its first execution. Thereafter, the timer will  go off at regular intervals. A trigger function is called when the timer goes off. If a failure occurs during the execution of the trigger function, it will return an error. That error will be passed to the onError function.

{{#playpen task-timer.bal}}

{{#playpen task-timer.sh}}
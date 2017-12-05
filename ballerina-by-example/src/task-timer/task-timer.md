# Task Timer

Timers are used to execute tasks periodically. A timer may have an initial delay & interval specified.
The delay specifies the delay between registering the task and its first execution. Thereafter, the timer will  go off at regular intervals. A trigger function is called when the timer goes off. If a failure occurs during the execution of the trigger function, it will return an error. That error will be passed to the onError function.

{{#playpen task-timer.bal}}

```bash
$ ballerina run task-timer.bal
Timer task demo
Task ID:ff6c2d4f-d9c2-46f4-a176-306d31fd2830
Cleaning up...
1
Cleaning up...
2
Cleaning up...
3
Cleaning up...
4
...
...
```
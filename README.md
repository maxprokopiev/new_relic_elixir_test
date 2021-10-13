# TestApp

## Setup

```
docker-compose build dev
```

With the license key:

```
> docker-compose run dev mix run -e TestApp.hello
Creating test_app_dev_run ... done
Compiling 1 file (.ex)
Generated test_app app

08:28:57.736 [info]  [alarm_handler: {:set, {:system_memory_high_watermark, []}}]
======
world
======
[os_mon] cpu supervisor port (cpu_sup): Erlang has closed
[os_mon] memory supervisor port (memsup): Erlang has closed
```

Without the license key:

```
> docker-compose run dev mix run -e TestApp.hello
Creating test_app_dev_run ... done
Compiling 1 file (.ex)
Generated test_app app

08:27:46.597 [info]  [alarm_handler: {:set, {:system_memory_high_watermark, []}}]

08:27:46.634 [info]  Application new_relic_agent exited: exited in: NewRelic.Application.start(:normal, [])
    ** (EXIT) an exception was raised:
        ** (ArgumentError) argument error
            (new_relic_agent) lib/new_relic/harvest/telemetry_sdk/config.ex:17: NewRelic.Harvest.TelemetrySdk.Config.determine_hosts/2
            (new_relic_agent) lib/new_relic/init.ex:28: NewRelic.Init.init_config/0
            (new_relic_agent) lib/new_relic/init.ex:9: NewRelic.Init.run/0
            (new_relic_agent) lib/new_relic/application.ex:7: NewRelic.Application.start/2
            (kernel) application_master.erl:277: :application_master.start_it_old/4
** (Mix) Could not start application new_relic_agent: exited in: NewRelic.Application.start(:normal, [])
    ** (EXIT) an exception was raised:
        ** (ArgumentError) argument error
            (new_relic_agent) lib/new_relic/harvest/telemetry_sdk/config.ex:17: NewRelic.Harvest.TelemetrySdk.Config.determine_hosts/2
            (new_relic_agent) lib/new_relic/init.ex:28: NewRelic.Init.init_config/0
            (new_relic_agent) lib/new_relic/init.ex:9: NewRelic.Init.run/0
            (new_relic_agent) lib/new_relic/application.ex:7: NewRelic.Application.start/2
            (kernel) application_master.erl:277: :application_master.start_it_old/4
[os_mon] memory supervisor port (memsup): Erlang has closed
[os_mon] cpu supervisor port (cpu_sup): Erlang has closed
ERROR: 1
```

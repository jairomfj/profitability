# Profitability

**Elixir study project**

This project tries to use the [Clean architecture](https://blog.8thlight.com/uncle-bob/2012/08/13/the-clean-architecture.html) with Elixir.

At the time I have 3 subprojecs.

1. [rest_api](https://github.com/agnaldo4j/profitability/tree/master/apps/rest_api)
  * Using cowboy, plug and joken I try to create a way to receive http requests and delegate to usecase.
2. [relational_adapter](https://github.com/agnaldo4j/profitability/tree/master/apps/relational_adapter)
  * Using ecto, postgrex, this is a persistence implementation service.
3. [usecase](https://github.com/agnaldo4j/profitability/tree/master/apps/usecase)
  * Each module is a implementation of a specific business logic.


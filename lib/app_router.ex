defmodule AppRouter do
  use Plug.Router

  @skip_token_verification %{joken_skip: true}

  plug :match
  plug Joken.Plug, on_verifying: &AppRouter.verify_function/0, on_error: &AppRouter.error_logging/2
  plug :dispatch

  get "/hello" do
    send_resp(conn, 200, "app world")
  end

  get "/anyway", private: @skip_token_verification do
    send_resp(conn, 200, "app anyway world")
  end

  forward "/users", to: UserRouter, private: @skip_token_verification

  match _, private: @skip_token_verification do
    send_resp(conn, 404, "app oops")
  end

  def error_logging(conn, message) do
    {conn, message}
  end
end

require "spec_helper"

describe Lita::Handlers::Eightball, lita_handler: true do
  it { routes_command("8ball").to(:shake) }
  it { routes_command("eightball").to(:shake) }
  it { routes_command("roll the eightball").to(:shake) }
  it { routes_command("shake the eightball").to(:shake) }
  it { routes_command("am I cool?").to(:shake) }
  it { is_expected.not_to route_command("hey buddy").to(:shake) }
end

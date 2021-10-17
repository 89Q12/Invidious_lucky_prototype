class Feed::Index < BrowserAction
  get "/" do
    redirect to: Feed::Popular
  end
end

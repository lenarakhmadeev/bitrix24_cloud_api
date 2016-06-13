module Bitrix24CloudApi
  module CRM
    class Livefeedmessage < Bitrix24CloudApi::Crm
      class << self
        def add(client, query = {})
          client.make_post_request(resource_url(client, __method__), query)
        end
      end
    end

    class ProductRows < Bitrix24CloudApi::Crm
      class << self
        undef_method :add, :delete, :update

        def set(client, query = {})
          client.make_post_request(resource_url(client, __method__), query)
        end
      end
    end

    class Userfield < Bitrix24CloudApi::Crm
      class << self
        undef_method :fields

        def types(client, query = {})
          client.make_get_request(resource_url(client, __method__), query)
        end
      end
    end

    class Localizations < Bitrix24CloudApi::Crm
      class << self
        undef_method :delete, :fields, :get

        def set(client, query = {})
          client.make_post_request(resource_url(client, __method__), query)
        end
      end
    end

    class Communication < Bitrix24CloudApi::Crm
      class << self
        undef_method :add, :delete, :update, :get, :list
      end
    end

    class Duplicate < Bitrix24CloudApi::Crm
      class << self
        undef_method :add, :delete, :update, :get, :list

        def findbycomm(client, query = {})
          client.make_get_request(resource_url(client, __method__), query)
        end
      end
    end

    class Enum < Bitrix24CloudApi::Crm
      class << self
        undef_method :add, :delete, :update, :get, :list
      end

      [:ownertype, :contenttype, :activitytype, :activitypriority, :activitydirection,
       :activitynotifytype].each do |action|
        define_singleton_method(action) do |client, query = {}|
          client.make_get_request(resource_url(client, action), query)
        end
      end
    end
  end
end


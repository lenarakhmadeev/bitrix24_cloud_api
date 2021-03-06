module Bitrix24CloudApi

  class Crm < Base

   [:add, :delete, :update].each do |action|
     define_singleton_method(action) do |client, query = {}|
       client.make_post_request(resource_url(client, action), query)
     end
   end


   [:get, :list, :fields].each do |action|
     define_singleton_method(action) do |client, query = {}|
       client.make_get_request(resource_url(client, action), query)
     end
   end
  end
end

require "bitrix24_cloud_api/CRM/additional_entities"
require "bitrix24_cloud_api/CRM/activity"
require "bitrix24_cloud_api/CRM/catalog"
require "bitrix24_cloud_api/CRM/company"
require "bitrix24_cloud_api/CRM/contact"
require "bitrix24_cloud_api/CRM/currency"
require "bitrix24_cloud_api/CRM/deal"
require "bitrix24_cloud_api/CRM/invoice"
require "bitrix24_cloud_api/CRM/invoice_status"
require "bitrix24_cloud_api/CRM/lead"
require "bitrix24_cloud_api/CRM/product"
require "bitrix24_cloud_api/CRM/product_section"
require "bitrix24_cloud_api/CRM/quote"

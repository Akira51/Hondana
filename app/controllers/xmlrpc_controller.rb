class XmlrpcController < ApplicationController
  web_service_dispatching_mode :delegated
  web_service_api XmlrpcApi # ���줬�ʤ���XmlrpcService��not found��
  web_service :api, XmlrpcService.new
end

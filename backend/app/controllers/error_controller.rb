class ErrorController < ActionController::Base

  def unmatched
    render body: params
  end
 
  def invalid_api_version
    generate_error(:INVALID_API_VERSION, "asdf")
  end
 
  def invalid_output_format
    generate_error(:INVALID_OUTPUT_FORMAT, "sadf")
  end

  def index
    render body: nil, status: 404 #TODO redirect to an http page (e.g. docs)
  end

  private
  def generate_error(type, message)
    puts params
    render json: { error: true, type: type.to_s, message: message }, status: 400
  end
end

# Informational 100 :continue
# 101 :switching_protocols
# 102 :processing
# Success 200 :ok
# 201 :created
# 202 :accepted
# 203 :non_authoritative_information
# 204 :no_content
# 205 :reset_content
# 206 :partial_content
# 207 :multi_status
# 208 :already_reported
# 226 :im_used
# Redirection 300 :multiple_choices
# 301 :moved_permanently
# 302 :found
# 303 :see_other
# 304 :not_modified
# 305 :use_proxy
# 306 :reserved
# 307 :temporary_redirect
# 308 :permanent_redirect
# Client Error  400 :bad_request
# 401 :unauthorized
# 402 :payment_required
# 403 :forbidden
# 404 :not_found
# 405 :method_not_allowed
# 406 :not_acceptable
# 407 :proxy_authentication_required
# 408 :request_timeout
# 409 :conflict
# 410 :gone
# 411 :length_required
# 412 :precondition_failed
# 413 :request_entity_too_large
# 414 :request_uri_too_long
# 415 :unsupported_media_type
# 416 :requested_range_not_satisfiable
# 417 :expectation_failed
# 422 :unprocessable_entity
# 423 :locked
# 424 :failed_dependency
# 426 :upgrade_required
# 428 :precondition_required
# 429 :too_many_requests
# 431 :request_header_fields_too_large
# Server Error  500 :internal_server_error
# 501 :not_implemented
# 502 :bad_gateway
# 503 :service_unavailable
# 504 :gateway_timeout
# 505 :http_version_not_supported
# 506 :variant_also_negotiates
# 507 :insufficient_storage
# 508 :loop_detected
# 510 :not_extended
# 511 :network_authentication_required
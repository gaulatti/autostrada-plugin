require_relative './worker_services_pb'

class WorkerServiceImpl < Worker::WorkerService::Service
  def perform_task(request, _unused_call)
    puts "Payload received: #{request.payload}"

    # Your task logic here
    result = "Task processed successfully with payload: #{request.payload}"

    Worker::WorkerResponse.new(success: true, result: result)
  rescue StandardError => e
    Worker::WorkerResponse.new(success: false, result: e.message)
  end
end
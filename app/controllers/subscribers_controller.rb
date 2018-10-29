# Controller for subscribers we can contact with wedding updates
class SubscribersController < ApplicationController
  def create
    subscriber = Subscriber.new(subscriber_params)
    if subscriber.save
      data = {
        type: 'subscriber',
        id: subscriber.id,
        attributes: subscriber.except(:id)
      }
      render json: { data: data }, status: :ok
    else
      data = { errors: [subscriber_errors(subscriber)] }
      render json: { data: data }, status: :unprocessable_entity
    end
  end

  private

  def subscriber_params
    @subscriber_params ||= params.require(:subscriber)
                                 .permit(:email, :name)
  end

  def subscriber_errors(subscriber)
    subscriber.errors.keys.map.with_index do |key, idx|
      subscriber.errors.details[key].map do |detail|
        return {
          source: { pointer: "/data/attributes/#{key}" },
          title: detail[:error],
          detail: "#{key} #{subscriber.errors.messages[key][idx]}"
        }
      end
    end
  end
end

if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_9k1tcuOn4pQbZFwWOfsQtvVn',
    secret_key: 'sk_test_yRJ8Hh1zpDyo3Zy73jY3T2iq'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
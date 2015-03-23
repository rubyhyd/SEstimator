module SEstimator

  # Usage
  # SEstimator::Chao92.estimate (samples) #=> the estimation of numberof species
  class Chao92

    def initialize
    end

    def self.estimate(samples)
      Chao92.new.run(samples)
    end

    def run(samples)
      @samples = samples
      @ff = @samples.to_hash.to_ff
      estimate
    end

    # Show the samples
    #
    def show
      @samples
    end

    private
    def estimate
      @turing_estimator = if @ff[1]
                            1 - @ff[1].to_f / @samples.size
                          else
                            1.0
                          end

      @n1 = @samples.uniq.size / @turing_estimator

      @cv_estimator = [@n1 * (@ff.inject(0.0) { |res, pair| res + pair.first * (pair.first - 1) * pair.last }) / @samples.size / (@samples.size - 1.0) - 1.0, 0.0].max

      @total_number = @n1 + @samples.size * (1 - @turing_estimator) / @turing_estimator * @cv_estimator
    end

  end

end
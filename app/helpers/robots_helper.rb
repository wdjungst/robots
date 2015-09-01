module RobotsHelper
	def truthelizer(truth)
      case truth.to_s.downcase
        when 'true'
          'Yes'
        when 'false'
          'No'
      end
	end
end

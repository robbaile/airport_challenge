class Airport
    attr_accessor :planes
    def initialize
        @planes = []
    end

    def land_plane(plane)
        @planes << plane
    end

    def take_off(ready_plane)
        plane_to_take_off = @planes.select { |plane| plane.flight_number == ready_plane.flight_number }[0]
        @planes.delete(plane_to_take_off)
        return plane_to_take_off
    end

end
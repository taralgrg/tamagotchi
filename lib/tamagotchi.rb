
class Tamagotchi
  @@all_tamagotchi=[]

    define_method(:initialize) do |name|
      @name = name
      @food_level = 10
      @sleep_level = 10
      @activity_level = 10
    end

    define_method(:name) do
      @name
    end

    define_method(:food_level) do
      @food_level
    end

    define_method(:sleep_level) do
      @sleep_level
    end

    define_method(:activity_level) do
      @activity_level
    end

    define_method(:is_alive) do
     if @food_level > 0 && @food_level < 20 && @sleep_level > 0 && @sleep_level < 20 && @activity_level > 0 && @activity_level < 20
       return true
     else
       return false
    end
  end

    define_method(:food_level) do
      @food_level
    end

    define_method(:set_food_level) do
      @food_level = 0
    end

    define_method(:time_passes) do
      @food_level = @food_level-1
    end

    define_method(:feed_food) do
      @food_level = @food_level+1
    end

    define_method(:do_some_activity) do
      @activity_level = @activity_level+1
      @food_level = @food_level-2
      @sleep_level = @sleep_level-1
    end

    define_method(:resting) do
      @sleep_level = @sleep_level+1
      @activity_level = @activity_level-1
      @food_level = @food_level-1
    end
end

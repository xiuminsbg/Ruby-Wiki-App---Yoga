class PagesController < ApplicationController

  def index

  end

end

class PosesController < ApplicationController
  layout "poses"

  def poses

  end

  def pose1
    @yoga_pose = "Head-To-Knee Forward Bend"
    @original_name = "Janu Sirsasana"

  end

  def pose2
    @yoga_pose = "Noose Pose"
    @original_name = "Pasasana"
  end

  def pose3
    @yoga_pose = "Camel Pose"
    @original_name = "Ustrasana"
  end

  def index
    @new_post = Post.new
    @all_posts = Post.order(created_at: :desc).all
  end

  

end

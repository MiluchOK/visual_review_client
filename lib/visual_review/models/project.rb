module VisualReview
  class Project

    def self.get_all
      VisualReview.client.connection.get('/api/projects').body
    end

    def self.get(project_id)
      VisualReview.client.connection.get("/api/projects/#{project_id}").body
    end
  end
end
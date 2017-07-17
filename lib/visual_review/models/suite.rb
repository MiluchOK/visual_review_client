module VisualReview
  class Suite
    def self.get_all(project_id)
      VisualReview.client.connection.get("/api/projects/#{project_id}/suites").body
    end

    def self.get(project_id, suite_id)
      VisualReview.client.connection.get("/api/projects/#{project_id}/suites/#{suite_id}").body
    end

    def self.get_status(project_id, suite_id)
      VisualReview.client.connection.get("/api/projects/#{project_id}/suites/#{suite_id}/status").body
    end
  end
end
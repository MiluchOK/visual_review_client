module VisualReview
  class Run
    def self.create(project_name, suite_name)
      res = VisualReview.client.connection.post("/api/runs",
                                          {suiteName: suite_name,
                                          projectName: project_name})
      res.body
    end

    def self.get(run_id)
      VisualReview.client.connection.get("/api/runs/#{run_id}").body
    end
  end
end

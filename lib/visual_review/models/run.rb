module VisualReview
  class Run
    def self.create(project_name, suite_name, branch_name='master')
      res = VisualReview.client.connection.post("/api/runs",
                                          {suiteName: suite_name,
                                          projectName: project_name,
                                          branchName: branch_name})
      res.body
    end

    def self.get(run_id)
      VisualReview.client.connection.get("/api/runs/#{run_id}").body
    end

    def self.analyse(run_id)
      VisualReview.client.connection.get("/api/runs/#{run_id}/analysis").body
    end
  end
end

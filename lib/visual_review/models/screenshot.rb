module VisualReview
  class Screenshot
    def self.add(run_id, file, data_hash)
      clnt = HTTPClient.new
      body = {
          file: file,
          screenshotName: data_hash[:screenshotName],
          meta: data_hash[:meta],
          properties: data_hash[:properties]
      }
      uri = VisualReview.client.connection.base_url + "/api/runs/#{run_id}/screenshots"
      clnt.post(uri, body).body
    end

    def self.get(screenshot_id)
      VisualReview.client.connection.get("/api/image/#{screenshot_id}").body
    end
  end
end
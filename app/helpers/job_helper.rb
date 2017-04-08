module JobsHelper
  def render_job_category(job)
    key = JobData.job_categories.key(job.job_category)
    I18n.t("job_categories.#{key}")
  end
end

class TaskMailer < ApplicationMailer
  default from: 'task_leaf@example.com'

  def creation_email(task)
    @task = task
    mail(
      subject: 'タスク作成完了メール',
      to: 'user@example.com',
      from: 'task_leaf@example.com'
    )
  end
end

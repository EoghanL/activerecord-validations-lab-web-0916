class TitleValidator < ActiveModel::Validator

  def validate(record)
    unless ["Won't Believe", "Secret", "Top", "Guess"].any? do |words|
        record.title.include?(words) if record.title != nil
      end
    record.errors[:title] << "Title must be clickbait."
    end
  end

end

require "rails_guides/helpers"

module RailsGuides
  module HelpersJa
    include Helpers

    def finished_documents(documents)
      # Enable this line when not like to display WIP documents
      #documents.reject { |document| document['work_in_progress'] }
      documents
    end

    def docs_for_sitemap(position)
      case position
        when "L"
          documents_by_section.to(3)
        when "C"
          documents_by_section.from(4).take(2)
        when "R"
          documents_by_section.from(6)
        else
          raise "Unknown position: #{position}"
      end
    end
  end
end

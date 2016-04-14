class SubcommitteeController < ActionController::Base
    layout "base"
    before_filter :authenticate_user!
    
    def executive_committee_index
        @executive_announcements = ExecutiveAnnouncement.order(created_at: :DESC)
        @executive_document_lists = ExecutiveDocumentList.order(updated_at: :DESC)
    end
    
    def external_committee_index
        @external_announcements = ExternalAnnouncement.order(created_at: :DESC)
        @external_document_lists = ExternalDocumentList.order(updated_at: :DESC)
    end
    
    def internal_committee_index
        @internal_announcements = InternalAnnouncement.order(created_at: :DESC)
        @internal_document_lists = InternalDocumentList.order(updated_at: :DESC)
    end
end
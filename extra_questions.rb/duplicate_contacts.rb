# contacts have emails if their emails are a subset of another contact they can be merged

class Contact
  def initialize(email_addresses: [])
    @emails = Set.new email_addresses
  end
  
  def emails
    @emails
  end
  
  def is_subset?(contact)
    contact.emails.subset?(@emails)
  end
  
  def is_superset?(contact)
    contact.emails.superset?(@emails)
  end
end

def merge_contacts(contacts)
  merged_contacts = []
  contacts.each do |contact|
    merge = true
    merged_contacts.each_with_index do |merged_contact, idx|
      if merged_contact.is_subset?(contact)
        merge = false
        break
      elsif merged_contact.is_superset?(contact)
        merged_contacts[idx] = contact
        merge = false
        break
      end
    end
    (merged_contacts << contact) if merge
  end
  merged_contacts
end

pairs = [[1,2],[2],[3,4],[3],[1,2,3,4],[4,5]].map do |arr|
  Contact.new(email_addresses: arr)
end

merge_contacts(pairs)

if Rails.env.development? && !KnowledgeDomain.exists?
  knowledge_domain_names = ['Kotlin', 'Java',
                            'Desenvolvimento Web', 'Sprint Boot',
                            'Django', 'Flask',
                            'React.js', 'Docker',
                            'AWS']

  knowledge_domain_names.each do |name|
    KnowledgeDomain.create!(name: name)
  end

  domains = KnowledgeDomain.order(:name).limit(5)

  User.find_by(email: 'test@email.com').knowledge_domains << domains
end

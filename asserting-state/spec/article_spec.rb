require_relative '../lib/article.rb'

describe Article do
  it 'tests draft articles' do
    article = Article.new(
      author: 'Bob',
      title: 'Look Around You',
      body: 'What are birds? We just don\'t know.'
    )

    expect(article.published?).to eq(false)
    expect(article.author).to eq('Bob')
    expect(article.title).to eq('Look Around You')
    expect(article.body).to eq('What are birds? We just don\'t know.')
  end

  it 'tests approving' do
    article = Article.new(
      author: 'Bob',
      title: 'Look Around You',
      body: 'What are birds? We just don\'t know.'
    )

    article.approve('Alice')

    expect(article.approved?).to eq(true)
    expect(article.approved_by).to eq('Alice')
    expect(article.author).to eq('Bob')
    expect(article.title).to eq('Look Around You')
    expect(article.body).to eq('What are birds? We just don\'t know.')
  end

  it 'tests publishing' do
    article = Article.new(
      author: 'Bob',
      title: 'Look Around You',
      body: 'What are birds? We just don\'t know.'
    )

    article.approve('Alice')
    article.publish('John')

    expect(article.published?).to eq(true)
    expect(article.published_by).to eq('John')
    expect(article.author).to eq('Bob')
    expect(article.title).to eq('Look Around You')
    expect(article.body).to eq('What are birds? We just don\'t know.')
  end
end

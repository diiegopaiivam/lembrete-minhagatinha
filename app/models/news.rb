class News < ApplicationRecord
    def self.refresh
        url = 'https://news.google.com/'
        # Baixa o Html do Google News
        doc = Nokogiri::HTML(RestClient.get(url))
        # Parseia o Html e coloca em variáveis
        results = doc.search('.section-content', '.blended-wrapper').map do |link|
          result = {}
          # Pega o titulo
         result[:title] = link.search('div.esc-lead-article-title-wrapper > h2').text
          # Pega a descrição
          result[:description] = link.search('div.esc-lead-snippet-wrapper').text
          # Pega o link
          result[:link] = link.search('.esc-lead-article-title > a').attr('href').value
          # Data da notícia
          result[:time] = link.search('.al-attribution-timestamp').text
          result
        end
        # Limpa as notícias antigas
        News.all.delete_all
        # Cria as novas notícias
        News.create title: 'Novo Curso', description: 'One Bit Code vai lançar um curso completo em breve :)', link: 'https://onebitcode.com', time: '28 minutos atrás'
    end
end

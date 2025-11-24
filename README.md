Aqui está o arquivo `README.md` traduzido para o português (PT-BR):

![Banner image](https://user-images.githubusercontent.com/10284570/173569848-c624317f-42b1-45a6-ab09-f0ea3c247648.png)

# n8n - Automação de Fluxos de Trabalho Segura para Equipes Técnicas

O n8n é uma plataforma de automação de fluxos de trabalho (workflow automation) que oferece às equipes técnicas a flexibilidade do código com a velocidade do *no-code*. Com mais de 400 integrações, recursos nativos de IA e uma licença *fair-code*, o n8n permite que você construa automações poderosas mantendo total controle sobre seus dados e implantações.

![n8n.io - Screenshot](https://raw.githubusercontent.com/n8n-io/n8n/master/assets/n8n-screenshot-readme.png)

## Principais Capacidades

- **Programe Quando Precisar**: Escreva em JavaScript/Python, adicione pacotes npm ou use a interface visual.
- **Plataforma Nativa de IA**: Crie fluxos de trabalho de agentes de IA baseados no LangChain com seus próprios dados e modelos.
- **Controle Total**: Hospede você mesmo (*self-host*) com nossa licença *fair-code* ou use nossa [oferta na nuvem](https://app.n8n.cloud/login).
- **Pronto para Empresas**: Permissões avançadas, SSO e implantações *air-gapped* (isoladas).
- **Comunidade Ativa**: Mais de 400 integrações e mais de 900 [modelos](https://n8n.io/workflows) prontos para uso.

## Início Rápido

Experimente o n8n instantaneamente com [npx](https://docs.n8n.io/hosting/installation/npm/) (requer [Node.js](https://nodejs.org/en/)):

```
npx n8n
```

Ou faça o deploy com [Docker](https://docs.n8n.io/hosting/installation/docker/):

```
docker volume create n8n_data
docker run -it --rm --name n8n -p 5678:5678 -v n8n_data:/home/node/.n8n docker.n8n.io/n8nio/n8n
```

Acesse o editor em http://localhost:5678

## Recursos

- 📚 [Documentação](https://docs.n8n.io)
- 🔧 [Mais de 400 Integrações](https://n8n.io/integrations)
- 💡 [Exemplos de Fluxos de Trabalho](https://n8n.io/workflows)
- 🤖 [Guia de IA & LangChain](https://docs.n8n.io/advanced-ai/)
- 👥 [Fórum da Comunidade](https://community.n8n.io)
- 📖 [Tutoriais da Comunidade](https://community.n8n.io/c/tutorials/28)

## Suporte

Precisa de ajuda? Nosso fórum da comunidade é o lugar para obter suporte e se conectar com outros usuários:
[community.n8n.io](https://community.n8n.io)

## Licença

O n8n é [fair-code](https://faircode.io), distribuído sob a [Sustainable Use License](https://github.com/n8n-io/n8n/blob/master/LICENSE.md) (Licença de Uso Sustentável) e a [n8n Enterprise License](https://github.com/n8n-io/n8n/blob/master/LICENSE_EE.md).

- **Código Disponível**: Código fonte sempre visível.
- **Hospedagem Própria**: Faça o deploy em qualquer lugar.
- **Extensível**: Adicione seus próprios nós e funcionalidades.

[Licenças Enterprise](mailto:license@n8n.io) disponíveis para recursos e suporte adicionais.

Informações adicionais sobre o modelo de licença podem ser encontradas na [documentação](https://docs.n8n.io/sustainable-use-license/).

## Contribuindo

Encontrou um bug 🐛 ou tem uma ideia de recurso ✨? Confira nosso [Guia de Contribuição](https://github.com/n8n-io/n8n/blob/master/CONTRIBUTING.md) para começar.

## Junte-se à Equipe

Quer moldar o futuro da automação? Confira nossas [vagas de emprego](https://n8n.io/careers) e junte-se à nossa equipe!

## O que significa n8n?

**Resposta curta:** Significa "nodemation" e pronuncia-se *n-eight-n*.

**Resposta longa:** "Recebo essa pergunta com bastante frequência (mais frequentemente do que esperava), então decidi que provavelmente é melhor respondê-la aqui. Enquanto procurava um bom nome para o projeto com um domínio gratuito, percebi muito rapidamente que todos os bons em que conseguia pensar já estavam ocupados. Então, no final, escolhi nodemation. 'node-' no sentido de que usa uma visualização em nós (Node-View) e que usa Node.js, e '-mation' para 'automação' (automation), que é o que o projeto deve ajudar a fazer. No entanto, eu não gostava de quão longo o nome era e não conseguia me imaginar escrevendo algo tão longo toda vez na CLI. Foi aí que acabei chegando em 'n8n'." - **Jan Oberhauser, Fundador e CEO, n8n.io**

/*
 * Gerado por fernando-moretes/platform como ponto de partida. ESTE arquivo e
 * seu: o rollout so cria se nao existir, nunca sobrescreve.
 *
 * Modelo C4 de app-mcp-aws-solution-architect. Renderize em https://c4.home.lab (Structurizr Lite)
 * ou cole em https://structurizr.com/dsl.
 */
workspace "app-mcp-aws-solution-architect" "Bilingual MCP server and AWS solution architecture assistant for service discovery, Well-Architected guidance and AI tooling." {

    configuration {
        scope softwaresystem
    }

    model {
        usuario = person "Usuário"
        sistema = softwareSystem "app-mcp-aws-solution-architect" "Bilingual MCP server and AWS solution architecture assistant for service discovery, Well-Architected guidance and AI tooling." {
            app = container "Aplicação" "Descreva o que roda aqui" "ci-python.yml"
        }
        usuario -> sistema.app "Usa" "HTTPS"
    }

    views {
        systemContext sistema "contexto" {
            include *
            autoLayout lr
        }
        container sistema "containers" {
            include *
            autoLayout lr
        }
        styles {
            element "Person" {
                shape person
                background #08427b
                color #ffffff
            }
            element "Software System" {
                background #1168bd
                color #ffffff
            }
            element "Container" {
                background #438dd5
                color #ffffff
            }
        }
    }
}

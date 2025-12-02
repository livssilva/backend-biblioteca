export interface LivroDTO {
    idLivro: number,
    titulo: string,
    autor: string,
    editora: string,
    anoPublicacao: number,
    isbn: number,
    quantTotal: number,
    quantDisponivel: number,
    valorAquisicao: number,
    statusLivroEmprestado: string,
    situacao?: boolean
}
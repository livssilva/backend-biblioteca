class Livro{
    private idAluno: number;
    private idLivro: number;
    private titulo: string;
    private autor: string;
    private editora: string;
    private anoPublicacao: number;
    private isbn: number;
    private quantTotal: number;
    private quantDisponivel: number;
    private valorAquisicao: number;
    private statusLivroEmprestado: string;


    constructor(
        _idAluno: number,
        _idLivro: number,
        _titulo: string,
        _autor: string,
        _editora: string,
        _anoPublicacao: number,
        _isbn: number,
        _quantTotal: number,
        _quantDisponivel: number,
        _valorAquisicao: number,
        _statusLivroEmprestado: string,
    ) {
        this.idAluno = _idAluno;
        this.idLivro = _idLivro;
        this.titulo = _titulo;
        this.autor = _autor;
        this.editora = _editora;
        this.anoPublicacao = _anoPublicacao;
        this.isbn = _isbn;
        this.quantTotal = _quantTotal;
        this.quantDisponivel = _quantDisponivel;
        this.valorAquisicao = _valorAquisicao;
        this.statusLivroEmprestado = _statusLivroEmprestado;
    }  

public getIdAluno(): number{ 
        return this.idAluno;
    }    
public setIdAluno(_idAluno: number): void{
    this.idAluno = _idAluno;
}

public getIdLivro(): number{ 
        return this.idLivro;
    }    
public setIdLivro(_idLivro: number): void{
    this.idLivro = _idLivro;
}

public getTitulo(): string{ 
        return this.titulo;
    }    
public setTitulo(_titulo: string): void{
    this.titulo = _titulo;
}


public getAutor(): string{
    return this.autor;
}
public setAutor(_autor: string){
    this.autor = _autor;
}


public getEditora (): string{
    return this.editora;
}
public setEditora(_editora: string){
    this.editora = _editora;
}


public getAnoPublicacao (): number{
    return this.anoPublicacao;
}
public setAnoPublicacao(_anoPublicacao: number){
    this.anoPublicacao = _anoPublicacao;
}


public getIsbn (): number{
    return this.isbn;
}
public setIsbn(_isbn: number){
    this.isbn = _isbn;
}


public getQuantTotal (): number{
    return this.quantTotal;
}
public setQuantTotal(_quantTotal: number){
    this.quantTotal = _quantTotal;
}


public getQuantDisponivel (): number{
    return this.quantDisponivel;
}
public setQuantDisponivel(_quantDisponivel: number){
    this.quantDisponivel = _quantDisponivel;
}


public getValorAquisicao (): number{
    return this.valorAquisicao;
}
public setValorAquisicao (_valorAquisicao: number){
    this.valorAquisicao = _valorAquisicao;
}


public getStatusLivroEmprestado (): string{
    return this.statusLivroEmprestado;
}
public setStatusLivroEmprestado (_statusLivroEmprestado: string){
    this.statusLivroEmprestado = _statusLivroEmprestado;
}

 }
export default Livro;
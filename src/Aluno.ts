class Aluno{
    private ra: number = 0;
    private nome: string;
    private sobrenome: string;
    private dataNascimento: Date;
    private endereco: string;
    private email: string;
    private celular: number;


    constructor(
         _ra: number,
        _nome: string,
        _sobrenome: string,
        _dataNascimento: Date,
        _endereco: string,
        _email: string,
        _celular: number,
    ) {
        this.ra = _ra;
        this.nome = _nome;
        this.sobrenome = _sobrenome;
        this.dataNascimento = _dataNascimento;
        this.endereco = _endereco;
        this.email = _email;
        this.celular = _celular;
    }  

public getRa(): number{ 
        return this.ra;
    }    
public setRa(_ra: number): void{
    this.ra = _ra;
}

public getNome(): string{
    return this.nome;
}
public setNome(_nome: string){
    this.nome = _nome;
}

public getSobrenome (): string{
    return this.sobrenome;
}
public setSobrenome(_sobrenome: string){
    this.sobrenome = _sobrenome;
}

public getDataNascimento (): Date{
    return this.dataNascimento;
}
public setDataNascimento(_dataNascimento: Date){
    this.dataNascimento = _dataNascimento;
}

public getEndereco (): string{
    return this.endereco;
}
public setEndereco(_endereco: string){
    this.endereco = _endereco;
}

public getEmail (): string{
    return this.email;
}
public setEmail(_email: string){
    this.email = _email;
}

public getCelular (): number{
    return this.celular;
}
public setCelular(_celular: number){
    this.celular = _celular;
}

 }
export default Aluno;
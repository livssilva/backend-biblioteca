class Emprestimo{
    private dataEmprestimo: Date;
    private dataDevolucao: Date;
    private statusEmprestimo: Date;

    constructor(
         _dataEmprestimo: Date,
        _dataDevolucao: Date,
        _statusEmprestimo: Date,

    ) {
        this.dataEmprestimo = _dataEmprestimo;
        this.dataDevolucao = _dataDevolucao;
        this.statusEmprestimo = _statusEmprestimo;
    
    }  

public getDataEmprestimo(): Date{ 
        return this.dataEmprestimo;
    }    
public setDataEmprestimo(_dataEmprestimo: Date): void{
    this.dataEmprestimo = _dataEmprestimo;
}


public getDataDevolucao(): Date{
    return this.dataDevolucao;
}
public setDataDevolucao(_dataDevolucao: Date){
    this.dataDevolucao = _dataDevolucao;
}


public getStatusEmprestimo(): Date{
    return this.statusEmprestimo;
}
public setStatusEmprestimo(_statusEmprestimo: Date){
    this.statusEmprestimo = _statusEmprestimo;
}
  }

export default Emprestimo;
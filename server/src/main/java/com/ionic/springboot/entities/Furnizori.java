package com.ionic.springboot.entities;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "FURNIZORI")
public class Furnizori {

    @Id
    @Column(name = "NUME_FURNIZOR")
    private String numeFurnizor;

    @Column(name = "DATA_CONTRACT")
    private Date dataContract;

    public String getNumeFurnizor(){
        return numeFurnizor;
    }

    public void setNumeFurnizor(String numeFurnizor) {
        this.numeFurnizor = numeFurnizor;
    }

    public Date getDataContract() {
        return dataContract;
    }

    public void setDataContract(Date dataContract) {
        this.dataContract = dataContract;
    }
}

import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { FormsModule } from '@angular/forms';
import { HttpClientModule, HTTP_INTERCEPTORS } from '@angular/common/http';
import { AppRoutingModule } from './/app-routing.module';
import { AppComponent } from './app.component';
import { FooterComponent } from './components/footer/footer.component';
import { HeaderComponent } from './components/header/header.component';
import { HomeComponent } from './components/home/home.component';
import { AngajatiComponent } from './components/angajati/angajati.component';
import { ClientiComponent } from './components/clienti/clienti.component';
import { DepartamenteComponent } from './components/departamente/departamente.component';
import { DetaliiTranzactiiComponent } from './components/detalii-tranzactii/detalii-tranzactii.component';
import { FurnizoriComponent } from './components/furnizori/furnizori.component';
import { LocatiiComponent } from './components/locatii/locatii.component';
import { TranzactiiComponent } from './components/tranzactii/tranzactii.component';
import { PctcComponent } from './components/pctc/pctc.component';
import { PctdComponent } from './components/pctd/pctd.component';
import { SelectvtranzactiiComponent } from './components/selectvtranzactii/selectvtranzactii.component';
import { SelectvfurnizoriComponent } from './components/selectvfurnizori/selectvfurnizori.component';
import { ProduseComponent } from './components/produse/produse.component';

@NgModule({
  declarations: [
    AppComponent,
    HomeComponent,
    HeaderComponent,
    FooterComponent,
    AngajatiComponent,
    ClientiComponent,
    DepartamenteComponent,
    DetaliiTranzactiiComponent,
    FurnizoriComponent,
    LocatiiComponent,
    TranzactiiComponent,
    PctcComponent,
    PctdComponent,
    SelectvtranzactiiComponent,
    SelectvfurnizoriComponent,
    ProduseComponent
  ],
  imports: [
      BrowserModule,
      FormsModule,
      HttpClientModule,
    AppRoutingModule
  ],
  providers:[ ],
  bootstrap: [AppComponent]
})
export class AppModule { }

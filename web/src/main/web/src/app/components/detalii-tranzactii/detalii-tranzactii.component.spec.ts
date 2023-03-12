import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { DetaliiTranzactiiComponent } from './detalii-tranzactii.component';

describe('DetaliiTranzactiiComponent', () => {
  let component: DetaliiTranzactiiComponent;
  let fixture: ComponentFixture<DetaliiTranzactiiComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ DetaliiTranzactiiComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(DetaliiTranzactiiComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});

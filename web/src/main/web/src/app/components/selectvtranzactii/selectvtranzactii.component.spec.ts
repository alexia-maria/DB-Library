import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { SelectvtranzactiiComponent } from './selectvtranzactii.component';

describe('SelectvtranzactiiComponent', () => {
  let component: SelectvtranzactiiComponent;
  let fixture: ComponentFixture<SelectvtranzactiiComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SelectvtranzactiiComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(SelectvtranzactiiComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});

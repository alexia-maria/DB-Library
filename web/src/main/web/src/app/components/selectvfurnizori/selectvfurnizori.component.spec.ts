import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { SelectvfurnizoriComponent } from './selectvfurnizori.component';

describe('SelectvfurnizoriComponent', () => {
  let component: SelectvfurnizoriComponent;
  let fixture: ComponentFixture<SelectvfurnizoriComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SelectvfurnizoriComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(SelectvfurnizoriComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});

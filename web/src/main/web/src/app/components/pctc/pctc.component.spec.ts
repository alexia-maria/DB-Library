import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { PctcComponent } from './pctc.component';

describe('PctcComponent', () => {
  let component: PctcComponent;
  let fixture: ComponentFixture<PctcComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ PctcComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(PctcComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});

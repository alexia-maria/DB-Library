import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { PctdComponent } from './pctd.component';

describe('PctdComponent', () => {
  let component: PctdComponent;
  let fixture: ComponentFixture<PctdComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ PctdComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(PctdComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});

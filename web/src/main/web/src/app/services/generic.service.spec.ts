import { TestBed, inject } from '@angular/core/testing';
import { GenericService } from './generic.service';


describe('LocatiiService', () => {
  beforeEach(() => {
    TestBed.configureTestingModule({
        providers: [GenericService]
    });
  });

    it('should be created', inject([GenericService], (service: GenericService) => {
    expect(service).toBeTruthy();
  }));
});

describe('empty spec', () => {
  it('passes', () => {
    cy.visit('http://localhost:8080/ords/r/detales/detaliu-tiekimas100101/')
	cy.get('#P9999_USERNAME').type('dev');
	cy.get('#P9999_PASSWORD').type('devv');
	cy.get('#B9749960756518171').click();
	cy.get('#APEX_ERROR_MESSAGE').should('exist');
  })
})
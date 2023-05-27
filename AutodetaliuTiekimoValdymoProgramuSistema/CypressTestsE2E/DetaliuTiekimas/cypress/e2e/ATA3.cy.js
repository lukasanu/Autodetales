describe('empty spec', () => {
  it('passes', () => {
    cy.visit('http://localhost:8080/ords/r/detales/detaliu-tiekimas100101/')
	cy.viewport(1500, 1000);
	cy.get('#P9999_USERNAME').type('dev');
	cy.get('#P9999_PASSWORD').type('dev');
	cy.get('#B9749960756518171').click();
	cy.get('#R70563820638104832 > .t-HeroRegion-wrap > .t-HeroRegion-col--content > .t-HeroRegion-title').click();
	cy.get('#B71331205367107152').click();
	cy.get('#P40_CLIENTS_input').type('Lukas Anužis');
	cy.get('#P40_VEHICLE_BRANDS_input').type('BMW');
	cy.get('#P40_VEHICLE_MODELS_input').type('F10');
	cy.get('#B21430913681381017').click();
	cy.get('#R12053357392690079 > .t-Region-header > .t-Region-headerItems--title').should('exist');
  })
})
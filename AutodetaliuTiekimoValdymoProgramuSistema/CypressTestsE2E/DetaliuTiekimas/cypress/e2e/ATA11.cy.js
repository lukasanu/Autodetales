describe('empty spec', () => {
  it('passes', () => {
    cy.visit('http://localhost:8080/ords/r/detales/detaliu-tiekimas100101/')
	cy.viewport(1500, 1000);
	cy.get('#P9999_USERNAME').type('dev');
	cy.get('#P9999_PASSWORD').type('dev');
	cy.get('#B9749960756518171').click();
	cy.get('#R29339757504375222 > .t-HeroRegion-wrap > .t-HeroRegion-col--content > .t-HeroRegion-title').click();
	cy.get(':nth-child(1) > [headers="DERIVED$01"] > a > [aria-label="Peržiūrėti"] > .fa').click();
	cy.get('#B70207164878720253').click();
	cy.get('.js-confirmBtn').click();
  })
})
describe('empty spec', () => {
  it('passes', () => {
    cy.visit('http://localhost:8080/ords/r/detales/detaliu-tiekimas100101/')
	cy.viewport(1500, 1000);
	cy.get('#P9999_USERNAME').type('dev');
	cy.get('#P9999_PASSWORD').type('dev');
	cy.get('#B9749960756518171').click();
	cy.get('#R70563820638104832 > .t-HeroRegion-wrap > .t-HeroRegion-col--content > .t-HeroRegion-title').click();
	cy.get(':nth-child(1) > [headers="DERIVED$01"] > a > [aria-label="Peržiūrėti"] > .fa').click();
	cy.get('#R12053357392690079 > .t-Region-header > .t-Region-headerItems--controls > .t-Button').click();
	cy.get('#P40_PART_CODES').type('85450075127');
	cy.get('#B21362693463367276').click();
	cy.get('[data-id="2263"] > .u-tS').dblclick();
	cy.get('[data-id="2263"] > .u-tS').type('Sparno dalis A');
	cy.get('#R11609118564476486 > .t-Region-header > .t-Region-headerItems--title').click();
	cy.get('#B20015301457605348').click();
	
	
  })
})
describe('empty spec', () => {
  it('passes', () => {
    cy.visit('http://localhost:8080/ords/r/detales/detaliu-tiekimas100101/')
	cy.viewport(1500, 1000);
	cy.get('#P9999_USERNAME').type('dev');
	cy.get('#P9999_PASSWORD').type('dev');
	cy.get('#B9749960756518171').click();
	cy.get('#R70563820638104832 > .t-HeroRegion-wrap > .t-HeroRegion-col--content > .t-HeroRegion-title').click();
	cy.get(':nth-child(1) > [headers="DERIVED$01"] > a > [aria-label="Peržiūrėti"] > .fa').click();
	cy.get('#P40_ORDER_PREP_STATUS').select('Suspenduota') 
	cy.wait(1000);
	cy.get('#P40_ORDER_PREP_STATUS').select('Užklausa pilnai perkelta į užsakymą') 
	cy.wait(1000);
	cy.get('#P40_ORDER_PREP_STATUS').select('Užklausa dalinai perkelta į užsakymą') 
	cy.wait(1000);
	cy.get('#P40_ORDER_PREP_STATUS').select('Išsiųsta klientui') 
	cy.wait(1000);
	cy.get('#P40_ORDER_PREP_STATUS').select('Neišsiųsta klientui') 
  })
})
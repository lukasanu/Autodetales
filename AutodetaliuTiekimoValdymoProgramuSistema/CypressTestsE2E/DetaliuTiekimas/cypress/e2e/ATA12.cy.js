describe('empty spec', () => {
  it('passes', () => {
    cy.visit('http://localhost:8080/ords/r/detales/detaliu-tiekimas100101/')
	cy.viewport(1500, 1000);
	cy.get('#P9999_USERNAME').type('admin');
	cy.get('#P9999_PASSWORD').type('admin');
	cy.get('#B9749960756518171').click();
	cy.get('#R26909295002504847 > .t-HeroRegion-wrap > .t-HeroRegion-col--content > .t-HeroRegion-title').click();
	cy.get(':nth-child(1) > [headers="APEX_ITEM.CHECKBOX(P_IDX=>1,P_VALUE=>VPL.NID)"] > input').click();
	cy.get(':nth-child(2) > [headers="APEX_ITEM.CHECKBOX(P_IDX=>1,P_VALUE=>VPL.NID)"] > input').click();
	cy.get('#B70208493083720267').click();
	cy.get('#R69787418376052851_heading').should('exist');
  })
})
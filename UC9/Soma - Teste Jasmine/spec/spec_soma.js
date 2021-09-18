describe("Teste de intervalo de soma ", function() {

    it("Valores intervalo", function() {
        expect( Somar(10,5) ).toBeGreaterThan(10);
        expect( Somar(9,9) ).toBeLessThan(20);
    });

});
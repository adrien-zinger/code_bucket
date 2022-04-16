function setup() {
    createCanvas(600, 400);
    const N = NODE_NUMBER;
    for (let i = 0; i < N; ++i) {
        let node = Node.new(i);
        nodes.push(node);
    }
    frameRate(FRAME_RATE);
    Node.connections();
}

function draw() {
    noStroke();
    clear();
    background("#2E2E2E");
    // pour chaque node,
    // - on set le status avec l'operation de next_status
    // - on fait un salve d'envoie d'id (au bout de n salve, tt les noeud doivent connaitre l'id)
    // - on regarde sa list d'identifiants recues
    // - on va chercher celui qui est le plus présent dans le résaux
    // - on pop l'id et ajoute l'operation dans le `next_status`
    nodes.forEach((node, index) => {
        node.inform();
        node.peek();
        node.draw();
    });
}
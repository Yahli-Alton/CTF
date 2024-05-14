from suffix_tree import Tree
import re
import pydot

PASS_LEN = 28
INITIAL_GUESS = 1051081353 # a

def load():
    node_labels = {}
    graph = pydot.graph_from_dot_file('hint.dot')[0]

    # Extract information from the graph
    nodes = graph.get_node_list()
    edges = graph.get_edge_list()

    for node in nodes:
        node_name = node.get_name()
        node_label = node.get_label()
        node_labels[node_name] = node_label

    return graph, node_labels


graph, node_labels = load()

def get_word_tree():
    tree = Tree()
    
    with open('USACONST.TXT', encoding='ISO8859') as f:
        text = f.read()
        words = list(set(re.sub('[^a-z]', ' ', text.lower()).split()))

    for i, w in enumerate(words):
        tree.add(i, w)

    return tree, words

def stage1(stree):
    pruned = []
    for edge in graph.get_edge_list():
        dst = edge.get_source()
        src = edge.get_destination()

        if not stree.find(node_labels[src] + node_labels[dst]):
            pruned.append(edge)

    for i in pruned:
        graph.del_edge(i.get_source(), i.get_destination())

    print(f"stage1: {len(pruned)} pruned {len(graph.get_edge_list()) - PASS_LEN} remaining")

    open("stage1.dot", "w").write(f"{graph}")

def dfs(node, path, edge_map, stree, words):
    cont_path = path + node_labels[node]
    if not stree.find(cont_path):
        return path

    for e in edge_map[node]:
        # the longest substring
        a = dfs(e, cont_path, edge_map, stree, words)
        if a in words:
            return a
    return ""

def stage2(stree, words):
    # create mapping
    edge_map = {}
    for edge in graph.get_edge_list():
        dst = edge.get_source()
        src = edge.get_destination()

        edge_map.setdefault(src, [])
        edge_map[src].append(dst)

    possible = set()
    for initial_guess in graph.get_edge_list():
        a = dfs(initial_guess.get_destination(), "", edge_map, stree, words)
        if a != "":
            possible.add(a)

    print(f"stage2: {len(possible)} possible words found")

    return possible

stree, words = get_word_tree()
stage1(stree)
print(stage2(stree, words))
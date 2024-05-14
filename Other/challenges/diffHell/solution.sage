import hashlib

while True:
    subprocess.check_output(['ls', '-l'])
    p = 11

    G = Matrix(GF(p), [
        [6, 4],
        [5, 3]
    ])
    GA = Matrix(GF(p), [
        [10, 10],
        [8, 10]
    ])
    GB = Matrix(GF(p), [
        [1, 9],
        [6, 8]
    ])

    G_eigen_vectors = G.eigenmatrix_right()[1]
    print(G_eigen_vectors)
    print(G_eigen_vectors^-1 * G * G_eigen_vectors)
    print()

    GB_eigen_vectors = GB.eigenmatrix_right()[1]
    print(GB_eigen_vectors)
    print(GB_eigen_vectors^-1 * GB * GB_eigen_vectors)
    print()

    # G_eigen_vectors^-1 * G * G_eigen_vectors = GB_eigen_vectors^-1 * GB * GB_eigen_vectors = B^-1 * G * B

    B = G_eigen_vectors * GB_eigen_vectors^-1
    print(B)
    print(B^-1 * G * B)
    super_secret_key = B^-1 * GA * B

    m = hashlib.sha256()
    m.update(f"{super_secret_key[0][1]}{super_secret_key[1][0]}{super_secret_key[1][1]}{super_secret_key[0][0]}".encode())
    opt = m.digest()
    encMSG = [205, 250, 156, 174, 163, 27, 252, 221, 22, 196, 88, 39, 88, 182, 193, 41, 62]
    print(opt)
    print([fl^^ot for fl,ot in zip(opt,encMSG)])
    print(bytes([fl^^ot for fl,ot in zip(opt,encMSG)]))

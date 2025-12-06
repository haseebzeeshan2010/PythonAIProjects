def cosine_similarity(vecA, vecB):
    dot_product = vecA[0] * vecB[0] + vecA[1] * vecB[1]
    magnitudeA = (vecA[0]**2 + vecA[1]**2) ** 0.5
    magnitudeB = (vecB[0]**2 + vecB[1]**2) ** 0.5
    euclidean_norm = magnitudeA * magnitudeB

    # Zero division check
    if magnitudeA == 0 or magnitudeB == 0:
        return 0

    return dot_product / euclidean_norm


vectorA = [7, -2]
vectorB = [1, 2]

# The higher the cosine similarity the more similar the two vectors
print(cosine_similarity(vectorA, vectorB))

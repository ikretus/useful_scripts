def getsizeof(obj):
    import gc
    objects, size, ids = [obj], 0, set()
    while objects:
        new = []
        for curr in objects:
            if id(curr) not in ids:
                ids.add(id(curr))
                size += sys.getsizeof(curr)
                new.append(curr)
        objects = gc.get_referents(*new)
    return size

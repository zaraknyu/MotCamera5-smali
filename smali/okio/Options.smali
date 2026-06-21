.class public final Lokio/Options;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# instance fields
.field public final byteStrings:[Lokio/ByteString;

.field public final trie:[I


# direct methods
.method public constructor <init>([Lokio/ByteString;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lokio/Options;->byteStrings:[Lokio/ByteString;

    iput-object p2, p0, Lokio/Options;->trie:[I

    return-void
.end method

.method public static buildTrieRecursive(JLokio/Buffer;ILjava/util/ArrayList;IILjava/util/ArrayList;)V
    .locals 22

    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v5, p4

    move/from16 v2, p5

    move/from16 v10, p6

    move-object/from16 v8, p7

    if-ge v2, v10, :cond_11

    move v3, v2

    :goto_0
    if-ge v3, v10, :cond_1

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokio/ByteString;

    invoke-virtual {v4}, Lokio/ByteString;->size()I

    move-result v4

    if-lt v4, v1, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    invoke-virtual/range {p4 .. p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/ByteString;

    add-int/lit8 v4, v10, -0x1

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokio/ByteString;

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v6

    if-ne v1, v6, :cond_2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lokio/ByteString;

    move-object/from16 v21, v6

    move v6, v2

    move v2, v3

    move-object/from16 v3, v21

    goto :goto_1

    :cond_2
    const/4 v6, -0x1

    move/from16 v21, v6

    move v6, v2

    move/from16 v2, v21

    :goto_1
    invoke-virtual {v3, v1}, Lokio/ByteString;->getByte(I)B

    move-result v7

    invoke-virtual {v4, v1}, Lokio/ByteString;->getByte(I)B

    move-result v9

    const-wide/16 v15, 0x2

    if-eq v7, v9, :cond_c

    add-int/lit8 v3, v6, 0x1

    const/4 v4, 0x1

    :goto_2
    if-ge v3, v10, :cond_4

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lokio/ByteString;

    invoke-virtual {v7, v1}, Lokio/ByteString;->getByte(I)B

    move-result v7

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lokio/ByteString;

    invoke-virtual {v9, v1}, Lokio/ByteString;->getByte(I)B

    move-result v9

    if-eq v7, v9, :cond_3

    add-int/lit8 v4, v4, 0x1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    const-wide/16 v17, 0x4

    iget-wide v11, v0, Lokio/Buffer;->size:J

    div-long v11, v11, v17

    long-to-int v3, v11

    int-to-long v11, v3

    add-long v11, p0, v11

    add-long/2addr v11, v15

    mul-int/lit8 v3, v4, 0x2

    const-wide/16 v19, -0x1

    int-to-long v13, v3

    add-long/2addr v11, v13

    invoke-virtual {v0, v4}, Lokio/Buffer;->writeInt(I)V

    invoke-virtual {v0, v2}, Lokio/Buffer;->writeInt(I)V

    move v2, v6

    :goto_3
    if-ge v2, v10, :cond_7

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/ByteString;

    invoke-virtual {v3, v1}, Lokio/ByteString;->getByte(I)B

    move-result v3

    if-eq v2, v6, :cond_5

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokio/ByteString;

    invoke-virtual {v4, v1}, Lokio/ByteString;->getByte(I)B

    move-result v4

    if-eq v3, v4, :cond_6

    :cond_5
    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v0, v3}, Lokio/Buffer;->writeInt(I)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    new-instance v4, Lokio/Buffer;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move v7, v6

    :goto_4
    if-ge v7, v10, :cond_b

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/ByteString;

    invoke-virtual {v2, v1}, Lokio/ByteString;->getByte(I)B

    move-result v2

    add-int/lit8 v3, v7, 0x1

    move v6, v3

    :goto_5
    if-ge v6, v10, :cond_9

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lokio/ByteString;

    invoke-virtual {v9, v1}, Lokio/ByteString;->getByte(I)B

    move-result v9

    if-eq v2, v9, :cond_8

    goto :goto_6

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_9
    move v6, v10

    :goto_6
    if-ne v3, v6, :cond_a

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/ByteString;

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v3

    if-ne v2, v3, :cond_a

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lokio/Buffer;->writeInt(I)V

    move-object v9, v8

    move-wide v2, v11

    move v8, v6

    goto :goto_7

    :cond_a
    iget-wide v2, v4, Lokio/Buffer;->size:J

    div-long v2, v2, v17

    long-to-int v2, v2

    int-to-long v2, v2

    add-long/2addr v2, v11

    mul-long v2, v2, v19

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Lokio/Buffer;->writeInt(I)V

    add-int/lit8 v5, v1, 0x1

    move-object v9, v8

    move-wide v2, v11

    move v8, v6

    move-object/from16 v6, p4

    invoke-static/range {v2 .. v9}, Lokio/Options;->buildTrieRecursive(JLokio/Buffer;ILjava/util/ArrayList;IILjava/util/ArrayList;)V

    move-object v5, v6

    :goto_7
    move-wide v11, v2

    move v7, v8

    move-object v8, v9

    goto :goto_4

    :cond_b
    iget-wide v1, v4, Lokio/Buffer;->size:J

    invoke-virtual {v0, v4, v1, v2}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    return-void

    :cond_c
    move-object v9, v8

    const-wide/16 v17, 0x4

    const-wide/16 v19, -0x1

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v7

    invoke-virtual {v4}, Lokio/ByteString;->size()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v8, 0x0

    move v11, v1

    :goto_8
    if-ge v11, v7, :cond_d

    invoke-virtual {v3, v11}, Lokio/ByteString;->getByte(I)B

    move-result v12

    invoke-virtual {v4, v11}, Lokio/ByteString;->getByte(I)B

    move-result v13

    if-ne v12, v13, :cond_d

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_d
    iget-wide v11, v0, Lokio/Buffer;->size:J

    div-long v11, v11, v17

    long-to-int v4, v11

    int-to-long v11, v4

    add-long v11, p0, v11

    add-long/2addr v11, v15

    int-to-long v13, v8

    add-long/2addr v11, v13

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    neg-int v4, v8

    invoke-virtual {v0, v4}, Lokio/Buffer;->writeInt(I)V

    invoke-virtual {v0, v2}, Lokio/Buffer;->writeInt(I)V

    move v2, v1

    :goto_9
    add-int v4, v1, v8

    if-ge v2, v4, :cond_e

    invoke-virtual {v3, v2}, Lokio/ByteString;->getByte(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v0, v4}, Lokio/Buffer;->writeInt(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_e
    add-int/lit8 v1, v6, 0x1

    if-ne v1, v10, :cond_10

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->size()I

    move-result v1

    if-ne v4, v1, :cond_f

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lokio/Buffer;->writeInt(I)V

    return-void

    :cond_f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    new-instance v3, Lokio/Buffer;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iget-wide v1, v3, Lokio/Buffer;->size:J

    div-long v1, v1, v17

    long-to-int v1, v1

    int-to-long v1, v1

    add-long/2addr v1, v11

    mul-long v1, v1, v19

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lokio/Buffer;->writeInt(I)V

    move-object v8, v9

    move v7, v10

    move-wide v1, v11

    invoke-static/range {v1 .. v8}, Lokio/Options;->buildTrieRecursive(JLokio/Buffer;ILjava/util/ArrayList;IILjava/util/ArrayList;)V

    iget-wide v1, v3, Lokio/Buffer;->size:J

    invoke-virtual {v0, v3, v1, v2}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    return-void

    :cond_11
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static varargs of([Lokio/ByteString;)Lokio/Options;
    .locals 15

    array-length v0, p0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-instance p0, Lokio/Options;

    new-array v0, v2, [Lokio/ByteString;

    filled-new-array {v2, v1}, [I

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lokio/Options;-><init>([Lokio/ByteString;[I)V

    return-object p0

    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move v0, v2

    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    aget-object v1, p0, v0

    invoke-static {v7, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    if-eqz v0, :cond_d

    move v0, v2

    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokio/ByteString;

    add-int/lit8 v3, v0, 0x1

    move v4, v3

    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokio/ByteString;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lokio/ByteString;->size()I

    move-result v6

    invoke-virtual {v5, v1, v6}, Lokio/ByteString;->rangeEquals(Lokio/ByteString;I)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {v5}, Lokio/ByteString;->size()I

    move-result v6

    invoke-virtual {v1}, Lokio/ByteString;->size()I

    move-result v8

    if-eq v6, v8, :cond_5

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v5, v6, :cond_4

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "duplicate option: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_4
    move v0, v3

    goto :goto_2

    :cond_7
    new-instance v5, Lokio/Buffer;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    const/4 v8, 0x0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v10}, Lokio/Options;->buildTrieRecursive(JLokio/Buffer;ILjava/util/ArrayList;IILjava/util/ArrayList;)V

    iget-wide v0, v5, Lokio/Buffer;->size:J

    const-wide/16 v3, 0x4

    div-long/2addr v0, v3

    long-to-int v0, v0

    new-array v1, v0, [I

    :goto_5
    if-ge v2, v0, :cond_b

    iget-wide v6, v5, Lokio/Buffer;->size:J

    cmp-long v8, v6, v3

    if-ltz v8, :cond_a

    iget-object v8, v5, Lokio/Buffer;->head:Lokio/Segment;

    iget v9, v8, Lokio/Segment;->pos:I

    iget v10, v8, Lokio/Segment;->limit:I

    sub-int v11, v10, v9

    const/4 v12, 0x4

    if-ge v11, v12, :cond_8

    invoke-virtual {v5}, Lokio/Buffer;->readByte()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    invoke-virtual {v5}, Lokio/Buffer;->readByte()B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    invoke-virtual {v5}, Lokio/Buffer;->readByte()B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    invoke-virtual {v5}, Lokio/Buffer;->readByte()B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    goto :goto_7

    :cond_8
    iget-object v11, v8, Lokio/Segment;->data:[B

    add-int/lit8 v12, v9, 0x1

    aget-byte v13, v11, v9

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x18

    add-int/lit8 v14, v9, 0x2

    aget-byte v12, v11, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v12, v13

    add-int/lit8 v13, v9, 0x3

    aget-byte v14, v11, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    or-int/2addr v12, v14

    add-int/lit8 v9, v9, 0x4

    aget-byte v11, v11, v13

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v11, v12

    sub-long/2addr v6, v3

    iput-wide v6, v5, Lokio/Buffer;->size:J

    if-ne v9, v10, :cond_9

    invoke-virtual {v8}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v6

    iput-object v6, v5, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v8}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    :goto_6
    move v6, v11

    goto :goto_7

    :cond_9
    iput v9, v8, Lokio/Segment;->pos:I

    goto :goto_6

    :goto_7
    aput v6, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "size < 4: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, v5, Lokio/Buffer;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    iget-wide v2, v5, Lokio/Buffer;->size:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_c

    new-instance v0, Lokio/Options;

    invoke-virtual {p0}, [Lokio/ByteString;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lokio/ByteString;

    invoke-direct {v0, p0, v1}, Lokio/Options;-><init>([Lokio/ByteString;[I)V

    return-object v0

    :cond_c
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "the empty byte string is not a supported option"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lokio/Options;->byteStrings:[Lokio/ByteString;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lokio/Options;->byteStrings:[Lokio/ByteString;

    array-length p0, p0

    return p0
.end method

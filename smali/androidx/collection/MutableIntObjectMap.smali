.class public final Landroidx/collection/MutableIntObjectMap;
.super Landroidx/collection/IntObjectMap;
.source "SourceFile"


# instance fields
.field public growthLimit:I


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x6

    .line 9
    invoke-direct {p0, v0}, Landroidx/collection/MutableIntObjectMap;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    iput-object v0, p0, Landroidx/collection/IntObjectMap;->metadata:[J

    .line 3
    sget-object v0, Landroidx/collection/IntSetKt;->EmptyIntArray:[I

    .line 4
    iput-object v0, p0, Landroidx/collection/IntObjectMap;->keys:[I

    .line 5
    sget-object v0, Landroidx/collection/internal/RuntimeHelpersKt;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Landroidx/collection/IntObjectMap;->values:[Ljava/lang/Object;

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 6
    invoke-static {p1}, Landroidx/collection/ScatterMapKt;->unloadedCapacity(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/collection/MutableIntObjectMap;->initializeStorage(I)V

    return-void

    .line 7
    :cond_1
    const-string p0, "Capacity must be a positive value."

    .line 8
    invoke-static {p0}, Landroidx/collection/internal/RuntimeHelpersKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final clear()V
    .locals 10

    const/4 v0, 0x0

    iput v0, p0, Landroidx/collection/IntObjectMap;->_size:I

    iget-object v1, p0, Landroidx/collection/IntObjectMap;->metadata:[J

    sget-object v2, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    if-eq v1, v2, :cond_0

    const-wide v2, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    invoke-static {v1, v2, v3}, Lkotlin/collections/ArraysKt;->fill$default([JJ)V

    iget-object v1, p0, Landroidx/collection/IntObjectMap;->metadata:[J

    iget v2, p0, Landroidx/collection/IntObjectMap;->_capacity:I

    shr-int/lit8 v3, v2, 0x3

    and-int/lit8 v2, v2, 0x7

    shl-int/lit8 v2, v2, 0x3

    aget-wide v4, v1, v3

    const-wide/16 v6, 0xff

    shl-long/2addr v6, v2

    not-long v8, v6

    and-long/2addr v4, v8

    or-long/2addr v4, v6

    aput-wide v4, v1, v3

    :cond_0
    iget-object v1, p0, Landroidx/collection/IntObjectMap;->values:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Landroidx/collection/IntObjectMap;->_capacity:I

    invoke-static {v0, v3, v2, v1}, Lkotlin/collections/ArraysKt;->fill(IILjava/lang/Object;[Ljava/lang/Object;)V

    iget v0, p0, Landroidx/collection/IntObjectMap;->_capacity:I

    invoke-static {v0}, Landroidx/collection/ScatterMapKt;->loadedCapacity(I)I

    move-result v0

    iget v1, p0, Landroidx/collection/IntObjectMap;->_size:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/collection/MutableIntObjectMap;->growthLimit:I

    return-void
.end method

.method public final findAbsoluteInsertIndex(I)I
    .locals 35

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    const v2, -0x3361d2af    # -8.293031E7f

    mul-int/2addr v1, v2

    shl-int/lit8 v3, v1, 0x10

    xor-int/2addr v1, v3

    ushr-int/lit8 v3, v1, 0x7

    and-int/lit8 v1, v1, 0x7f

    iget v4, v0, Landroidx/collection/IntObjectMap;->_capacity:I

    and-int v5, v3, v4

    const/4 v7, 0x0

    :goto_0
    iget-object v8, v0, Landroidx/collection/IntObjectMap;->metadata:[J

    shr-int/lit8 v9, v5, 0x3

    and-int/lit8 v10, v5, 0x7

    shl-int/lit8 v10, v10, 0x3

    aget-wide v11, v8, v9

    ushr-long/2addr v11, v10

    const/4 v13, 0x1

    add-int/2addr v9, v13

    aget-wide v8, v8, v9

    rsub-int/lit8 v14, v10, 0x40

    shl-long/2addr v8, v14

    int-to-long v14, v10

    neg-long v14, v14

    const/16 v10, 0x3f

    shr-long/2addr v14, v10

    and-long/2addr v8, v14

    or-long/2addr v8, v11

    int-to-long v10, v1

    const-wide v14, 0x101010101010101L

    mul-long v16, v10, v14

    move/from16 v18, v7

    const/4 v12, 0x0

    xor-long v6, v8, v16

    sub-long v14, v6, v14

    not-long v6, v6

    and-long/2addr v6, v14

    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v6, v14

    :goto_1
    const-wide/16 v16, 0x0

    cmp-long v19, v6, v16

    if-eqz v19, :cond_1

    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v16

    shr-int/lit8 v16, v16, 0x3

    add-int v16, v5, v16

    and-int v16, v16, v4

    move/from16 v19, v2

    iget-object v2, v0, Landroidx/collection/IntObjectMap;->keys:[I

    aget v2, v2, v16

    move/from16 v20, v12

    move/from16 v12, p1

    if-ne v2, v12, :cond_0

    return v16

    :cond_0
    const-wide/16 v16, 0x1

    sub-long v16, v6, v16

    and-long v6, v6, v16

    move/from16 v2, v19

    move/from16 v12, v20

    goto :goto_1

    :cond_1
    move/from16 v19, v2

    move/from16 v20, v12

    move/from16 v12, p1

    not-long v6, v8

    const/4 v2, 0x6

    shl-long/2addr v6, v2

    and-long/2addr v6, v8

    and-long/2addr v6, v14

    cmp-long v2, v6, v16

    const/16 v6, 0x8

    if-eqz v2, :cond_f

    invoke-virtual {v0, v3}, Landroidx/collection/MutableIntObjectMap;->findFirstAvailableSlot(I)I

    move-result v1

    iget v2, v0, Landroidx/collection/MutableIntObjectMap;->growthLimit:I

    const-wide/16 v7, 0xff

    if-nez v2, :cond_2

    iget-object v2, v0, Landroidx/collection/IntObjectMap;->metadata:[J

    shr-int/lit8 v12, v1, 0x3

    aget-wide v16, v2, v12

    and-int/lit8 v2, v1, 0x7

    shl-int/lit8 v2, v2, 0x3

    shr-long v16, v16, v2

    and-long v16, v16, v7

    const-wide/16 v21, 0xfe

    cmp-long v2, v16, v21

    if-nez v2, :cond_3

    :cond_2
    move-wide/from16 v26, v7

    move-wide/from16 v24, v10

    move/from16 v32, v13

    const/16 p1, 0x7

    const-wide/16 v16, 0x80

    goto/16 :goto_b

    :cond_3
    iget v1, v0, Landroidx/collection/IntObjectMap;->_capacity:I

    if-le v1, v6, :cond_b

    iget v2, v0, Landroidx/collection/IntObjectMap;->_size:I

    const-wide/16 v16, 0x80

    int-to-long v4, v2

    const-wide/16 v23, 0x20

    mul-long v4, v4, v23

    int-to-long v1, v1

    const-wide/16 v23, 0x19

    mul-long v1, v1, v23

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v1

    if-gtz v1, :cond_a

    iget-object v1, v0, Landroidx/collection/IntObjectMap;->metadata:[J

    iget v2, v0, Landroidx/collection/IntObjectMap;->_capacity:I

    iget-object v4, v0, Landroidx/collection/IntObjectMap;->keys:[I

    iget-object v5, v0, Landroidx/collection/IntObjectMap;->values:[Ljava/lang/Object;

    add-int/lit8 v12, v2, 0x7

    shr-int/lit8 v12, v12, 0x3

    move/from16 v23, v6

    move/from16 v6, v20

    :goto_2
    if-ge v6, v12, :cond_4

    aget-wide v24, v1, v6

    move-wide/from16 v26, v7

    and-long v7, v24, v14

    move-wide/from16 v24, v10

    const/16 p1, 0x7

    not-long v9, v7

    ushr-long v7, v7, p1

    add-long/2addr v9, v7

    const-wide v7, -0x101010101010102L

    and-long/2addr v7, v9

    aput-wide v7, v1, v6

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v10, v24

    move-wide/from16 v7, v26

    goto :goto_2

    :cond_4
    move-wide/from16 v26, v7

    move-wide/from16 v24, v10

    const/16 p1, 0x7

    invoke-static {v1}, Lkotlin/collections/ArraysKt;->getLastIndex([J)I

    move-result v6

    add-int/lit8 v7, v6, -0x1

    aget-wide v8, v1, v7

    const-wide v10, 0xffffffffffffffL

    and-long/2addr v8, v10

    const-wide/high16 v14, -0x100000000000000L

    or-long/2addr v8, v14

    aput-wide v8, v1, v7

    aget-wide v7, v1, v20

    aput-wide v7, v1, v6

    move/from16 v6, v20

    :goto_3
    if-eq v6, v2, :cond_9

    shr-int/lit8 v7, v6, 0x3

    aget-wide v8, v1, v7

    and-int/lit8 v12, v6, 0x7

    shl-int/lit8 v12, v12, 0x3

    shr-long/2addr v8, v12

    and-long v8, v8, v26

    cmp-long v14, v8, v16

    if-nez v14, :cond_5

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    cmp-long v8, v8, v21

    if-eqz v8, :cond_6

    goto :goto_4

    :cond_6
    aget v8, v4, v6

    invoke-static {v8}, Ljava/lang/Integer;->hashCode(I)I

    move-result v8

    mul-int v8, v8, v19

    shl-int/lit8 v9, v8, 0x10

    xor-int/2addr v8, v9

    ushr-int/lit8 v9, v8, 0x7

    invoke-virtual {v0, v9}, Landroidx/collection/MutableIntObjectMap;->findFirstAvailableSlot(I)I

    move-result v14

    and-int/2addr v9, v2

    sub-int v15, v14, v9

    and-int/2addr v15, v2

    div-int/lit8 v15, v15, 0x8

    sub-int v9, v6, v9

    and-int/2addr v9, v2

    div-int/lit8 v9, v9, 0x8

    const-wide/high16 v28, -0x8000000000000000L

    if-ne v15, v9, :cond_7

    and-int/lit8 v8, v8, 0x7f

    int-to-long v8, v8

    aget-wide v14, v1, v7

    move-wide/from16 v30, v10

    shl-long v10, v26, v12

    not-long v10, v10

    and-long/2addr v10, v14

    shl-long/2addr v8, v12

    or-long/2addr v8, v10

    aput-wide v8, v1, v7

    array-length v7, v1

    sub-int/2addr v7, v13

    aget-wide v8, v1, v20

    and-long v8, v8, v30

    or-long v8, v8, v28

    aput-wide v8, v1, v7

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v10, v30

    goto :goto_3

    :cond_7
    move-wide/from16 v30, v10

    shr-int/lit8 v9, v14, 0x3

    aget-wide v10, v1, v9

    and-int/lit8 v15, v14, 0x7

    shl-int/lit8 v15, v15, 0x3

    shr-long v32, v10, v15

    and-long v32, v32, v26

    cmp-long v18, v32, v16

    if-nez v18, :cond_8

    and-int/lit8 v8, v8, 0x7f

    move/from16 v32, v13

    move/from16 v18, v14

    int-to-long v13, v8

    move-object/from16 v33, v4

    move-object/from16 v34, v5

    shl-long v4, v26, v15

    not-long v4, v4

    and-long/2addr v4, v10

    shl-long v10, v13, v15

    or-long/2addr v4, v10

    aput-wide v4, v1, v9

    aget-wide v4, v1, v7

    shl-long v8, v26, v12

    not-long v8, v8

    and-long/2addr v4, v8

    shl-long v8, v16, v12

    or-long/2addr v4, v8

    aput-wide v4, v1, v7

    aget v4, v33, v6

    aput v4, v33, v18

    aput v20, v33, v6

    aget-object v4, v34, v6

    aput-object v4, v34, v18

    const/4 v4, 0x0

    aput-object v4, v34, v6

    goto :goto_5

    :cond_8
    move-object/from16 v33, v4

    move-object/from16 v34, v5

    move/from16 v32, v13

    move/from16 v18, v14

    and-int/lit8 v4, v8, 0x7f

    int-to-long v4, v4

    shl-long v7, v26, v15

    not-long v7, v7

    and-long/2addr v7, v10

    shl-long/2addr v4, v15

    or-long/2addr v4, v7

    aput-wide v4, v1, v9

    aget v4, v33, v18

    aget v5, v33, v6

    aput v5, v33, v18

    aput v4, v33, v6

    aget-object v4, v34, v18

    aget-object v5, v34, v6

    aput-object v5, v34, v18

    aput-object v4, v34, v6

    add-int/lit8 v6, v6, -0x1

    :goto_5
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    aget-wide v7, v1, v20

    and-long v7, v7, v30

    or-long v7, v7, v28

    aput-wide v7, v1, v4

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v10, v30

    move/from16 v13, v32

    move-object/from16 v4, v33

    move-object/from16 v5, v34

    goto/16 :goto_3

    :cond_9
    move/from16 v32, v13

    iget v1, v0, Landroidx/collection/IntObjectMap;->_capacity:I

    invoke-static {v1}, Landroidx/collection/ScatterMapKt;->loadedCapacity(I)I

    move-result v1

    iget v2, v0, Landroidx/collection/IntObjectMap;->_size:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/collection/MutableIntObjectMap;->growthLimit:I

    goto/16 :goto_a

    :cond_a
    :goto_6
    move-wide/from16 v26, v7

    move-wide/from16 v24, v10

    move/from16 v32, v13

    const/16 p1, 0x7

    goto :goto_7

    :cond_b
    const-wide/16 v16, 0x80

    goto :goto_6

    :goto_7
    iget v1, v0, Landroidx/collection/IntObjectMap;->_capacity:I

    invoke-static {v1}, Landroidx/collection/ScatterMapKt;->nextCapacity(I)I

    move-result v1

    iget-object v2, v0, Landroidx/collection/IntObjectMap;->metadata:[J

    iget-object v4, v0, Landroidx/collection/IntObjectMap;->keys:[I

    iget-object v5, v0, Landroidx/collection/IntObjectMap;->values:[Ljava/lang/Object;

    iget v6, v0, Landroidx/collection/IntObjectMap;->_capacity:I

    invoke-virtual {v0, v1}, Landroidx/collection/MutableIntObjectMap;->initializeStorage(I)V

    iget-object v1, v0, Landroidx/collection/IntObjectMap;->metadata:[J

    iget-object v7, v0, Landroidx/collection/IntObjectMap;->keys:[I

    iget-object v8, v0, Landroidx/collection/IntObjectMap;->values:[Ljava/lang/Object;

    iget v9, v0, Landroidx/collection/IntObjectMap;->_capacity:I

    move/from16 v10, v20

    :goto_8
    if-ge v10, v6, :cond_d

    shr-int/lit8 v11, v10, 0x3

    aget-wide v11, v2, v11

    and-int/lit8 v13, v10, 0x7

    shl-int/lit8 v13, v13, 0x3

    shr-long/2addr v11, v13

    and-long v11, v11, v26

    cmp-long v11, v11, v16

    if-gez v11, :cond_c

    aget v11, v4, v10

    invoke-static {v11}, Ljava/lang/Integer;->hashCode(I)I

    move-result v12

    mul-int v12, v12, v19

    shl-int/lit8 v13, v12, 0x10

    xor-int/2addr v12, v13

    ushr-int/lit8 v13, v12, 0x7

    invoke-virtual {v0, v13}, Landroidx/collection/MutableIntObjectMap;->findFirstAvailableSlot(I)I

    move-result v13

    and-int/lit8 v12, v12, 0x7f

    int-to-long v14, v12

    shr-int/lit8 v12, v13, 0x3

    and-int/lit8 v18, v13, 0x7

    shl-int/lit8 v18, v18, 0x3

    aget-wide v21, v1, v12

    move-object/from16 v28, v1

    move-object/from16 v23, v2

    shl-long v1, v26, v18

    not-long v1, v1

    and-long v1, v21, v1

    shl-long v14, v14, v18

    or-long/2addr v1, v14

    aput-wide v1, v28, v12

    add-int/lit8 v12, v13, -0x7

    and-int/2addr v12, v9

    and-int/lit8 v14, v9, 0x7

    add-int/2addr v12, v14

    shr-int/lit8 v12, v12, 0x3

    aput-wide v1, v28, v12

    aput v11, v7, v13

    aget-object v1, v5, v10

    aput-object v1, v8, v13

    goto :goto_9

    :cond_c
    move-object/from16 v28, v1

    move-object/from16 v23, v2

    :goto_9
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, v23

    move-object/from16 v1, v28

    goto :goto_8

    :cond_d
    :goto_a
    invoke-virtual {v0, v3}, Landroidx/collection/MutableIntObjectMap;->findFirstAvailableSlot(I)I

    move-result v1

    :goto_b
    iget v2, v0, Landroidx/collection/IntObjectMap;->_size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroidx/collection/IntObjectMap;->_size:I

    iget v2, v0, Landroidx/collection/MutableIntObjectMap;->growthLimit:I

    iget-object v3, v0, Landroidx/collection/IntObjectMap;->metadata:[J

    shr-int/lit8 v4, v1, 0x3

    aget-wide v5, v3, v4

    and-int/lit8 v7, v1, 0x7

    shl-int/lit8 v7, v7, 0x3

    shr-long v8, v5, v7

    and-long v8, v8, v26

    cmp-long v8, v8, v16

    if-nez v8, :cond_e

    goto :goto_c

    :cond_e
    move/from16 v32, v20

    :goto_c
    sub-int v2, v2, v32

    iput v2, v0, Landroidx/collection/MutableIntObjectMap;->growthLimit:I

    iget v0, v0, Landroidx/collection/IntObjectMap;->_capacity:I

    shl-long v8, v26, v7

    not-long v8, v8

    and-long/2addr v5, v8

    shl-long v7, v24, v7

    or-long/2addr v5, v7

    aput-wide v5, v3, v4

    add-int/lit8 v2, v1, -0x7

    and-int/2addr v2, v0

    and-int/lit8 v0, v0, 0x7

    add-int/2addr v2, v0

    shr-int/lit8 v0, v2, 0x3

    aput-wide v5, v3, v0

    return v1

    :cond_f
    move/from16 v23, v6

    add-int/lit8 v7, v18, 0x8

    add-int/2addr v5, v7

    and-int/2addr v5, v4

    move/from16 v2, v19

    goto/16 :goto_0
.end method

.method public final findFirstAvailableSlot(I)I
    .locals 9

    iget v0, p0, Landroidx/collection/IntObjectMap;->_capacity:I

    and-int/2addr p1, v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/collection/IntObjectMap;->metadata:[J

    shr-int/lit8 v3, p1, 0x3

    and-int/lit8 v4, p1, 0x7

    shl-int/lit8 v4, v4, 0x3

    aget-wide v5, v2, v3

    ushr-long/2addr v5, v4

    add-int/lit8 v3, v3, 0x1

    aget-wide v2, v2, v3

    rsub-int/lit8 v7, v4, 0x40

    shl-long/2addr v2, v7

    int-to-long v7, v4

    neg-long v7, v7

    const/16 v4, 0x3f

    shr-long/2addr v7, v4

    and-long/2addr v2, v7

    or-long/2addr v2, v5

    not-long v4, v2

    const/4 v6, 0x7

    shl-long/2addr v4, v6

    and-long/2addr v2, v4

    const-wide v4, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result p0

    shr-int/lit8 p0, p0, 0x3

    add-int/2addr p1, p0

    and-int p0, p1, v0

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x8

    add-int/2addr p1, v1

    and-int/2addr p1, v0

    goto :goto_0
.end method

.method public final initializeStorage(I)V
    .locals 9

    if-lez p1, :cond_0

    invoke-static {p1}, Landroidx/collection/ScatterMapKt;->normalizeCapacity(I)I

    move-result p1

    const/4 v0, 0x7

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Landroidx/collection/IntObjectMap;->_capacity:I

    if-nez p1, :cond_1

    sget-object v0, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    goto :goto_1

    :cond_1
    add-int/lit8 v0, p1, 0xf

    and-int/lit8 v0, v0, -0x8

    shr-int/lit8 v0, v0, 0x3

    new-array v0, v0, [J

    const-wide v1, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    invoke-static {v0, v1, v2}, Lkotlin/collections/ArraysKt;->fill$default([JJ)V

    :goto_1
    iput-object v0, p0, Landroidx/collection/IntObjectMap;->metadata:[J

    shr-int/lit8 v1, p1, 0x3

    and-int/lit8 v2, p1, 0x7

    shl-int/lit8 v2, v2, 0x3

    aget-wide v3, v0, v1

    const-wide/16 v5, 0xff

    shl-long/2addr v5, v2

    not-long v7, v5

    and-long v2, v3, v7

    or-long/2addr v2, v5

    aput-wide v2, v0, v1

    iget v0, p0, Landroidx/collection/IntObjectMap;->_capacity:I

    invoke-static {v0}, Landroidx/collection/ScatterMapKt;->loadedCapacity(I)I

    move-result v0

    iget v1, p0, Landroidx/collection/IntObjectMap;->_size:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/collection/MutableIntObjectMap;->growthLimit:I

    new-array v0, p1, [I

    iput-object v0, p0, Landroidx/collection/IntObjectMap;->keys:[I

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroidx/collection/IntObjectMap;->values:[Ljava/lang/Object;

    return-void
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 13

    invoke-static {p1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const v1, -0x3361d2af    # -8.293031E7f

    mul-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    and-int/lit8 v1, v0, 0x7f

    iget v2, p0, Landroidx/collection/IntObjectMap;->_capacity:I

    ushr-int/lit8 v0, v0, 0x7

    and-int/2addr v0, v2

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Landroidx/collection/IntObjectMap;->metadata:[J

    shr-int/lit8 v5, v0, 0x3

    and-int/lit8 v6, v0, 0x7

    shl-int/lit8 v6, v6, 0x3

    aget-wide v7, v4, v5

    ushr-long/2addr v7, v6

    add-int/lit8 v5, v5, 0x1

    aget-wide v4, v4, v5

    rsub-int/lit8 v9, v6, 0x40

    shl-long/2addr v4, v9

    int-to-long v9, v6

    neg-long v9, v9

    const/16 v6, 0x3f

    shr-long/2addr v9, v6

    and-long/2addr v4, v9

    or-long/2addr v4, v7

    int-to-long v6, v1

    const-wide v8, 0x101010101010101L

    mul-long/2addr v6, v8

    xor-long/2addr v6, v4

    sub-long v8, v6, v8

    not-long v6, v6

    and-long/2addr v6, v8

    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v6, v8

    :goto_1
    const-wide/16 v10, 0x0

    cmp-long v12, v6, v10

    if-eqz v12, :cond_1

    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v10

    shr-int/lit8 v10, v10, 0x3

    add-int/2addr v10, v0

    and-int/2addr v10, v2

    iget-object v11, p0, Landroidx/collection/IntObjectMap;->keys:[I

    aget v11, v11, v10

    if-ne v11, p1, :cond_0

    goto :goto_2

    :cond_0
    const-wide/16 v10, 0x1

    sub-long v10, v6, v10

    and-long/2addr v6, v10

    goto :goto_1

    :cond_1
    not-long v6, v4

    const/4 v12, 0x6

    shl-long/2addr v6, v12

    and-long/2addr v4, v6

    and-long/2addr v4, v8

    cmp-long v4, v4, v10

    if-eqz v4, :cond_3

    const/4 v10, -0x1

    :goto_2
    const/4 p1, 0x0

    if-ltz v10, :cond_2

    iget v0, p0, Landroidx/collection/IntObjectMap;->_size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/collection/IntObjectMap;->_size:I

    iget-object v0, p0, Landroidx/collection/IntObjectMap;->metadata:[J

    iget v1, p0, Landroidx/collection/IntObjectMap;->_capacity:I

    shr-int/lit8 v2, v10, 0x3

    and-int/lit8 v3, v10, 0x7

    shl-int/lit8 v3, v3, 0x3

    aget-wide v4, v0, v2

    const-wide/16 v6, 0xff

    shl-long/2addr v6, v3

    not-long v6, v6

    and-long/2addr v4, v6

    const-wide/16 v6, 0xfe

    shl-long/2addr v6, v3

    or-long v3, v4, v6

    aput-wide v3, v0, v2

    add-int/lit8 v2, v10, -0x7

    and-int/2addr v2, v1

    and-int/lit8 v1, v1, 0x7

    add-int/2addr v2, v1

    shr-int/lit8 v1, v2, 0x3

    aput-wide v3, v0, v1

    iget-object p0, p0, Landroidx/collection/IntObjectMap;->values:[Ljava/lang/Object;

    aget-object v0, p0, v10

    aput-object p1, p0, v10

    return-object v0

    :cond_2
    return-object p1

    :cond_3
    add-int/lit8 v3, v3, 0x8

    add-int/2addr v0, v3

    and-int/2addr v0, v2

    goto/16 :goto_0
.end method

.method public final set(ILjava/lang/Object;)V
    .locals 2

    invoke-virtual {p0, p1}, Landroidx/collection/MutableIntObjectMap;->findAbsoluteInsertIndex(I)I

    move-result v0

    iget-object v1, p0, Landroidx/collection/IntObjectMap;->keys:[I

    aput p1, v1, v0

    iget-object p0, p0, Landroidx/collection/IntObjectMap;->values:[Ljava/lang/Object;

    aput-object p2, p0, v0

    return-void
.end method

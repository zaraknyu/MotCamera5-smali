.class public final Landroidx/compose/animation/core/KeyframesSpec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/animation/core/DurationBasedAnimationSpec;


# instance fields
.field public final config:Landroidx/media3/extractor/mkv/Sniffer;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/mkv/Sniffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/core/KeyframesSpec;->config:Landroidx/media3/extractor/mkv/Sniffer;

    return-void
.end method


# virtual methods
.method public final bridge synthetic vectorize(Landroidx/compose/animation/core/TwoWayConverterImpl;)Landroidx/compose/animation/core/VectorizedAnimationSpec;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/KeyframesSpec;->vectorize(Landroidx/compose/animation/core/TwoWayConverterImpl;)Landroidx/compose/animation/core/VectorizedKeyframesSpec;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic vectorize(Landroidx/compose/animation/core/TwoWayConverterImpl;)Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/KeyframesSpec;->vectorize(Landroidx/compose/animation/core/TwoWayConverterImpl;)Landroidx/compose/animation/core/VectorizedKeyframesSpec;

    move-result-object p0

    return-object p0
.end method

.method public final vectorize(Landroidx/compose/animation/core/TwoWayConverterImpl;)Landroidx/compose/animation/core/VectorizedKeyframesSpec;
    .locals 19

    .line 3
    new-instance v0, Landroidx/collection/MutableIntList;

    move-object/from16 v1, p0

    .line 4
    iget-object v1, v1, Landroidx/compose/animation/core/KeyframesSpec;->config:Landroidx/media3/extractor/mkv/Sniffer;

    iget-object v2, v1, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Ljava/lang/Object;

    check-cast v2, Landroidx/collection/MutableIntObjectMap;

    .line 5
    iget v3, v2, Landroidx/collection/IntObjectMap;->_size:I

    add-int/lit8 v3, v3, 0x2

    .line 6
    invoke-direct {v0, v3}, Landroidx/collection/MutableIntList;-><init>(I)V

    .line 7
    new-instance v3, Landroidx/collection/MutableIntObjectMap;

    .line 8
    iget v4, v2, Landroidx/collection/IntObjectMap;->_size:I

    .line 9
    invoke-direct {v3, v4}, Landroidx/collection/MutableIntObjectMap;-><init>(I)V

    .line 10
    iget-object v4, v2, Landroidx/collection/IntObjectMap;->keys:[I

    .line 11
    iget-object v5, v2, Landroidx/collection/IntObjectMap;->values:[Ljava/lang/Object;

    .line 12
    iget-object v6, v2, Landroidx/collection/IntObjectMap;->metadata:[J

    .line 13
    array-length v7, v6

    add-int/lit8 v7, v7, -0x2

    if-ltz v7, :cond_2

    const/4 v9, 0x0

    .line 14
    :goto_0
    aget-wide v10, v6, v9

    not-long v12, v10

    const/4 v14, 0x7

    shl-long/2addr v12, v14

    and-long/2addr v12, v10

    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v12, v14

    cmp-long v12, v12, v14

    if-eqz v12, :cond_3

    sub-int v12, v9, v7

    not-int v12, v12

    ushr-int/lit8 v12, v12, 0x1f

    const/16 v13, 0x8

    rsub-int/lit8 v12, v12, 0x8

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v12, :cond_1

    const-wide/16 v15, 0xff

    and-long/2addr v15, v10

    const-wide/16 v17, 0x80

    cmp-long v15, v15, v17

    if-gez v15, :cond_0

    shl-int/lit8 v15, v9, 0x3

    add-int/2addr v15, v14

    .line 15
    aget v8, v4, v15

    aget-object v15, v5, v15

    check-cast v15, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    .line 16
    invoke-virtual {v0, v8}, Landroidx/collection/MutableIntList;->add(I)V

    move/from16 v16, v13

    .line 17
    new-instance v13, Landroidx/compose/animation/core/VectorizedKeyframeSpecElementInfo;

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v4, p1

    .line 18
    iget-object v5, v4, Landroidx/compose/animation/core/TwoWayConverterImpl;->convertToVector:Lkotlin/jvm/functions/Function1;

    .line 19
    iget-object v4, v15, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;->value:Ljava/lang/Float;

    .line 20
    invoke-interface {v5, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/animation/core/AnimationVector;

    .line 21
    iget-object v5, v15, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;->easing:Landroidx/compose/animation/core/Easing;

    .line 22
    invoke-direct {v13, v4, v5}, Landroidx/compose/animation/core/VectorizedKeyframeSpecElementInfo;-><init>(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/Easing;)V

    .line 23
    invoke-virtual {v3, v8, v13}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    goto :goto_2

    :cond_0
    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move/from16 v16, v13

    :goto_2
    shr-long v10, v10, v16

    add-int/lit8 v14, v14, 0x1

    move/from16 v13, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    goto :goto_1

    :cond_1
    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move v4, v13

    if-ne v12, v4, :cond_2

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    goto :goto_4

    :cond_3
    move-object/from16 v17, v4

    move-object/from16 v18, v5

    :goto_3
    if-eq v9, v7, :cond_2

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    goto :goto_0

    .line 24
    :goto_4
    invoke-virtual {v2, v4}, Landroidx/collection/IntObjectMap;->containsKey(I)Z

    move-result v5

    if-nez v5, :cond_6

    .line 25
    iget v5, v0, Landroidx/collection/MutableIntList;->_size:I

    if-ltz v5, :cond_5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    .line 26
    invoke-virtual {v0, v5}, Landroidx/collection/MutableIntList;->ensureCapacity(I)V

    .line 27
    iget-object v5, v0, Landroidx/collection/MutableIntList;->content:[I

    .line 28
    iget v7, v0, Landroidx/collection/MutableIntList;->_size:I

    if-eqz v7, :cond_4

    .line 29
    invoke-static {v6, v4, v7, v5, v5}, Lkotlin/collections/ArraysKt;->copyInto(III[I[I)V

    .line 30
    :cond_4
    aput v4, v5, v4

    .line 31
    iget v4, v0, Landroidx/collection/MutableIntList;->_size:I

    add-int/2addr v4, v6

    iput v4, v0, Landroidx/collection/MutableIntList;->_size:I

    goto :goto_5

    .line 32
    :cond_5
    const-string v0, "Index must be between 0 and size"

    invoke-static {v0}, Landroidx/collection/internal/RuntimeHelpersKt;->throwIndexOutOfBoundsException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    .line 33
    :cond_6
    :goto_5
    iget v4, v1, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    .line 34
    invoke-virtual {v2, v4}, Landroidx/collection/IntObjectMap;->containsKey(I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 35
    iget v2, v1, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    .line 36
    invoke-virtual {v0, v2}, Landroidx/collection/MutableIntList;->add(I)V

    .line 37
    :cond_7
    iget v2, v0, Landroidx/collection/MutableIntList;->_size:I

    if-nez v2, :cond_8

    goto :goto_6

    .line 38
    :cond_8
    iget-object v4, v0, Landroidx/collection/MutableIntList;->content:[I

    .line 39
    const-string v5, "<this>"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 40
    invoke-static {v4, v5, v2}, Ljava/util/Arrays;->sort([III)V

    .line 41
    :goto_6
    new-instance v2, Landroidx/compose/animation/core/VectorizedKeyframesSpec;

    .line 42
    iget v1, v1, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    .line 43
    sget-object v4, Landroidx/compose/animation/core/EasingKt;->LinearEasing:Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

    .line 44
    invoke-direct {v2, v0, v3, v1, v4}, Landroidx/compose/animation/core/VectorizedKeyframesSpec;-><init>(Landroidx/collection/MutableIntList;Landroidx/collection/MutableIntObjectMap;ILandroidx/compose/animation/core/Easing;)V

    return-object v2
.end method

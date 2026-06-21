.class public final Le/D;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/W0;

.field public final b:Le/B;

.field public final c:J

.field public final d:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final e:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final f:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final g:I

.field public h:J


# direct methods
.method public constructor <init>(Le/W0;Le/B;)V
    .locals 6

    const-string v0, "scaleFitParameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/D;->a:Le/W0;

    iput-object p2, p0, Le/D;->b:Le/B;

    iget-wide p1, p1, Le/W0;->a:J

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/SizeKt;->getCenter-uvyYCjk(J)J

    move-result-wide p1

    iput-wide p1, p0, Le/D;->c:J

    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, Le/D;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    int-to-long v0, p2

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    int-to-long v2, p2

    const/16 p2, 0x20

    shl-long/2addr v0, p2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    new-instance v2, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    invoke-static {v2}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    iput-object v0, p0, Le/D;->e:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long v2, p1

    shl-long p1, v0, p2

    and-long v0, v2, v4

    or-long/2addr p1, v0

    new-instance v0, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    invoke-static {v0}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, Le/D;->f:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    const/16 p1, 0x64

    iput p1, p0, Le/D;->g:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Le/D;->h:J

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;JJLjava/util/List;)J
    .locals 27

    move-object/from16 v0, p0

    const/16 v1, 0x20

    shr-long v2, p4, v1

    long-to-int v2, v2

    .line 8
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    const/4 v4, 0x1

    int-to-float v5, v4

    sub-float/2addr v3, v5

    const-wide v6, 0xffffffffL

    and-long v8, p4, v6

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    sub-float/2addr v9, v5

    .line 9
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v10, v3

    .line 10
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v12, v3

    shl-long v9, v10, v1

    and-long v11, v12, v6

    or-long/2addr v9, v11

    .line 11
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide/from16 v12, p2

    const/4 v14, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v16, v14, 0x1

    const/16 v17, 0x0

    if-ltz v14, :cond_9

    check-cast v15, Landroidx/compose/ui/geometry/Offset;

    move/from16 v18, v1

    move/from16 v19, v2

    .line 12
    iget-wide v1, v15, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 13
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-wide/from16 v20, v6

    move-object/from16 v6, p6

    invoke-interface {v6, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 14
    invoke-static {v1, v2, v12, v13}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v1

    move v15, v5

    const-wide/16 v4, 0x0

    long-to-int v4, v4

    .line 15
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    move/from16 p4, v8

    shr-long v7, v9, v18

    long-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    .line 16
    new-instance v8, Lkotlin/ranges/ClosedFloatRange;

    invoke-direct {v8, v5, v7}, Lkotlin/ranges/ClosedFloatRange;-><init>(FF)V

    .line 17
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    move-wide/from16 v22, v12

    and-long v11, v9, v20

    long-to-int v5, v11

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    .line 18
    new-instance v7, Lkotlin/ranges/ClosedFloatRange;

    invoke-direct {v7, v4, v5}, Lkotlin/ranges/ClosedFloatRange;-><init>(FF)V

    shr-long v4, v1, v18

    long-to-int v4, v4

    .line 19
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    .line 20
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 21
    invoke-static {v5, v8}, Lkotlin/ranges/RangesKt;->coerceIn(Ljava/lang/Float;Lkotlin/ranges/ClosedFloatRange;)Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    and-long v11, v1, v20

    long-to-int v8, v11

    .line 22
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    .line 23
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    .line 24
    invoke-static {v11, v7}, Lkotlin/ranges/RangesKt;->coerceIn(Ljava/lang/Float;Lkotlin/ranges/ClosedFloatRange;)Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    .line 25
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    int-to-long v11, v5

    .line 26
    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    move-object v13, v3

    move v7, v4

    int-to-long v3, v5

    shl-long v11, v11, v18

    and-long v3, v3, v20

    or-long/2addr v3, v11

    .line 27
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result v5

    if-nez v5, :cond_0

    .line 28
    invoke-static {v3, v4, v1, v2}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v3

    move-wide/from16 v11, v22

    .line 29
    invoke-static {v11, v12, v3, v4}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v3

    move-wide v11, v3

    goto :goto_1

    :cond_0
    move-wide/from16 v11, v22

    .line 30
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    move-wide/from16 v22, v1

    iget v1, v0, Le/D;->g:I

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v5, v4, 0x1

    if-ltz v4, :cond_2

    check-cast v2, Landroidx/compose/ui/geometry/Offset;

    move/from16 p3, v1

    .line 31
    iget-wide v1, v2, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    if-eq v14, v4, :cond_1

    .line 32
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    move-wide/from16 v24, v1

    shr-long v1, v24, v18

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    sub-float/2addr v4, v1

    .line 33
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    move/from16 v26, v1

    and-long v1, v24, v20

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    sub-float v1, v26, v1

    mul-float/2addr v4, v4

    mul-float/2addr v1, v1

    add-float/2addr v1, v4

    mul-int v2, p3, p3

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    move/from16 p5, v15

    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_1
    move v4, v5

    move-wide/from16 v1, v22

    goto :goto_2

    .line 34
    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v17

    :cond_3
    move/from16 p3, v1

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 36
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v7, v4, 0x1

    if-ltz v4, :cond_5

    .line 37
    check-cast v5, Landroidx/compose/ui/geometry/Offset;

    move-object v8, v2

    .line 38
    iget-wide v2, v5, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    if-ne v4, v14, :cond_4

    move-wide/from16 v2, v22

    .line 39
    :cond_4
    new-instance v4, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {v4, v2, v3}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 40
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, p1

    move v4, v7

    move-object v2, v8

    goto :goto_3

    .line 41
    :cond_5
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v17

    :cond_6
    const/4 v2, 0x0

    .line 42
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/geometry/Offset;

    .line 43
    iget-wide v2, v3, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    shr-long v2, v2, v18

    long-to-int v2, v2

    .line 44
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    const/4 v7, 0x1

    .line 45
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/geometry/Offset;

    .line 46
    iget-wide v3, v3, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    and-long v3, v3, v20

    long-to-int v3, v3

    .line 47
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    mul-float/2addr v3, v2

    .line 48
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/geometry/Offset;

    .line 49
    iget-wide v4, v2, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    shr-long v4, v4, v18

    long-to-int v2, v4

    .line 50
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    const/4 v4, 0x0

    .line 51
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/geometry/Offset;

    .line 52
    iget-wide v4, v5, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    and-long v4, v4, v20

    long-to-int v4, v4

    .line 53
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    const/4 v7, 0x1

    .line 54
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/geometry/Offset;

    .line 55
    iget-wide v4, v2, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    shr-long v4, v4, v18

    long-to-int v2, v4

    .line 56
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    const/4 v4, 0x2

    .line 57
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/geometry/Offset;

    .line 58
    iget-wide v7, v5, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    and-long v7, v7, v20

    long-to-int v5, v7

    .line 59
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    mul-float/2addr v5, v2

    .line 60
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/geometry/Offset;

    .line 61
    iget-wide v7, v2, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    shr-long v7, v7, v18

    long-to-int v2, v7

    .line 62
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    const/4 v7, 0x1

    .line 63
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/geometry/Offset;

    .line 64
    iget-wide v7, v8, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    and-long v7, v7, v20

    long-to-int v7, v7

    .line 65
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    mul-float/2addr v7, v2

    sub-float/2addr v5, v7

    add-float/2addr v5, v3

    .line 66
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/geometry/Offset;

    .line 67
    iget-wide v2, v2, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    shr-long v2, v2, v18

    long-to-int v2, v2

    .line 68
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    const/4 v3, 0x3

    .line 69
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/geometry/Offset;

    .line 70
    iget-wide v7, v7, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    and-long v7, v7, v20

    long-to-int v7, v7

    .line 71
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    mul-float/2addr v7, v2

    .line 72
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/geometry/Offset;

    .line 73
    iget-wide v3, v2, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    shr-long v2, v3, v18

    long-to-int v2, v2

    .line 74
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    const/4 v8, 0x2

    .line 75
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/geometry/Offset;

    .line 76
    iget-wide v3, v3, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    and-long v3, v3, v20

    long-to-int v3, v3

    .line 77
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    mul-float/2addr v3, v2

    sub-float/2addr v7, v3

    add-float/2addr v7, v5

    const/4 v14, 0x3

    .line 78
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/geometry/Offset;

    .line 79
    iget-wide v2, v2, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    shr-long v2, v2, v18

    long-to-int v2, v2

    .line 80
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    const/4 v4, 0x0

    .line 81
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/geometry/Offset;

    move/from16 p5, v15

    .line 82
    iget-wide v14, v3, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    and-long v14, v14, v20

    long-to-int v3, v14

    .line 83
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    mul-float/2addr v3, v2

    .line 84
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/geometry/Offset;

    .line 85
    iget-wide v14, v2, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    shr-long v14, v14, v18

    long-to-int v2, v14

    .line 86
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    const/4 v14, 0x3

    .line 87
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/geometry/Offset;

    .line 88
    iget-wide v14, v1, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    and-long v14, v14, v20

    long-to-int v1, v14

    .line 89
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    mul-float/2addr v1, v2

    sub-float/2addr v3, v1

    add-float/2addr v3, v7

    .line 90
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v1, v7

    mul-int v3, p3, p3

    int-to-double v7, v3

    cmpg-double v1, v1, v7

    if-gez v1, :cond_8

    .line 91
    :goto_4
    iget-wide v1, v0, Le/D;->h:J

    move-wide v11, v1

    goto :goto_5

    :cond_7
    move/from16 p5, v5

    move/from16 p4, v8

    move-wide v11, v12

    const/4 v4, 0x0

    move-object v13, v3

    :cond_8
    :goto_5
    move/from16 v8, p4

    move/from16 v5, p5

    move-object v3, v13

    move/from16 v14, v16

    move/from16 v1, v18

    move/from16 v2, v19

    move-wide/from16 v6, v20

    const/4 v4, 0x1

    move-wide v12, v11

    goto/16 :goto_0

    .line 92
    :cond_9
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v17

    :cond_a
    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 p5, v5

    move-wide/from16 v20, v6

    move/from16 p4, v8

    move-wide v11, v12

    .line 93
    iput-wide v11, v0, Le/D;->h:J

    shr-long v0, v11, v18

    long-to-int v0, v0

    .line 94
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    sub-float v1, v1, p5

    div-float/2addr v0, v1

    and-long v1, v11, v20

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-static/range {p4 .. p4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    sub-float v2, v2, p5

    div-float/2addr v1, v2

    .line 95
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v2, v0

    .line 96
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    shl-long v2, v2, v18

    and-long v0, v0, v20

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final a(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 14

    move-object/from16 v0, p2

    .line 1
    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 2
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v2, Le/D$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    move-object/from16 v4, p3

    invoke-direct {v2, p0, v4, v1, v3}, Le/D$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v4, Le/D$$ExternalSyntheticLambda1;

    invoke-direct {v4, v1, v0, p0}, Le/D$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function0;Le/D;)V

    new-instance v11, Le/D$$ExternalSyntheticLambda2;

    invoke-direct {v11, v3, v1, p0}, Le/D$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v10, Le/D$$ExternalSyntheticLambda3;

    invoke-direct {v10, v1, v0, p0}, Le/D$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function0;Le/D;)V

    sget p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->mouseToTouchSlopRatio:F

    .line 4
    new-instance v9, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$6$1$1$1;

    const/4 p0, 0x1

    invoke-direct {v9, p0, v2}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$6$1$1$1;-><init>(ILjava/lang/Object;)V

    new-instance v12, Landroidx/compose/runtime/Recomposer$effectJob$1$1;

    const/16 p0, 0x8

    invoke-direct {v12, p0, v4}, Landroidx/compose/runtime/Recomposer$effectJob$1$1;-><init>(ILjava/lang/Object;)V

    .line 5
    new-instance v7, Lkotlin/jvm/internal/Ref$LongRef;

    .line 6
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;

    const/4 v13, 0x0

    sget-object v6, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$7;->INSTANCE:Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$7;

    const/4 v8, 0x0

    invoke-direct/range {v5 .. v13}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/foundation/gestures/Orientation;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v0, p4

    invoke-static {p1, v5, v0}, Landroidx/compose/foundation/gestures/ScrollableKt;->awaitEachGesture(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-ne p0, v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v1

    :goto_1
    if-ne p0, v0, :cond_2

    return-object p0

    :cond_2
    return-object v1
.end method

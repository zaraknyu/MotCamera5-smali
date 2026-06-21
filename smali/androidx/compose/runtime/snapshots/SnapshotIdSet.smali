.class public final Landroidx/compose/runtime/snapshots/SnapshotIdSet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# static fields
.field public static final EMPTY:Landroidx/compose/runtime/snapshots/SnapshotIdSet;


# instance fields
.field public final belowBound:[J

.field public final lowerBound:J

.field public final lowerSet:J

.field public final upperSet:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    invoke-direct/range {v0 .. v7}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJJ[J)V

    sput-object v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->EMPTY:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    return-void
.end method

.method public constructor <init>(JJJ[J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    iput-wide p3, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    iput-wide p5, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:J

    iput-object p7, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[J

    return-void
.end method


# virtual methods
.method public final andNot(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/SnapshotIdSet;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->EMPTY:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_0
    if-ne v0, v2, :cond_1

    return-object v2

    :cond_1
    iget-wide v2, v1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:J

    iget-wide v4, v1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:J

    iget-object v6, v1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[J

    iget-wide v7, v1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    iget-wide v9, v1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    iget-wide v11, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:J

    cmp-long v1, v2, v11

    if-nez v1, :cond_2

    iget-object v1, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[J

    if-ne v6, v1, :cond_2

    move-wide/from16 v16, v11

    new-instance v11, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    iget-wide v2, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    not-long v4, v9

    and-long v12, v2, v4

    iget-wide v2, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    not-long v4, v7

    and-long v14, v2, v4

    move-object/from16 v18, v1

    invoke-direct/range {v11 .. v18}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJJ[J)V

    return-object v11

    :cond_2
    const/4 v1, 0x0

    if-eqz v6, :cond_3

    array-length v2, v6

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_3

    aget-wide v11, v6, v3

    invoke-virtual {v0, v11, v12}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->clear(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const-wide/16 v2, 0x0

    cmp-long v6, v7, v2

    const-wide/16 v11, 0x1

    const/16 v13, 0x40

    if-eqz v6, :cond_5

    move v6, v1

    :goto_1
    if-ge v6, v13, :cond_5

    shl-long v14, v11, v6

    and-long/2addr v14, v7

    cmp-long v14, v14, v2

    if-eqz v14, :cond_4

    int-to-long v14, v6

    add-long/2addr v14, v4

    invoke-virtual {v0, v14, v15}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->clear(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v0

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    cmp-long v6, v9, v2

    if-eqz v6, :cond_7

    :goto_2
    if-ge v1, v13, :cond_7

    shl-long v6, v11, v1

    and-long/2addr v6, v9

    cmp-long v6, v6, v2

    if-eqz v6, :cond_6

    int-to-long v6, v1

    add-long/2addr v6, v4

    int-to-long v14, v13

    add-long/2addr v6, v14

    invoke-virtual {v0, v6, v7}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->clear(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    return-object v0
.end method

.method public final clear(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;
    .locals 12

    iget-wide v5, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:J

    sub-long v0, p1, v5

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const-wide/16 v7, 0x1

    const-wide/16 v9, 0x40

    if-ltz v4, :cond_0

    cmp-long v11, v0, v9

    if-gez v11, :cond_0

    long-to-int p1, v0

    shl-long p1, v7, p1

    iget-wide v0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    and-long v7, v0, p1

    cmp-long v2, v7, v2

    if-eqz v2, :cond_5

    move-wide v1, v0

    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    not-long p1, p1

    and-long v3, v1, p1

    iget-object v7, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[J

    iget-wide v1, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    invoke-direct/range {v0 .. v7}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJJ[J)V

    return-object v0

    :cond_0
    cmp-long v9, v0, v9

    if-ltz v9, :cond_1

    const-wide/16 v9, 0x80

    cmp-long v9, v0, v9

    if-gez v9, :cond_1

    long-to-int p1, v0

    add-int/lit8 p1, p1, -0x40

    shl-long p1, v7, p1

    iget-wide v0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    and-long v7, v0, p1

    cmp-long v2, v7, v2

    if-eqz v2, :cond_5

    move-wide v1, v0

    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    not-long p1, p1

    and-long/2addr v1, p1

    iget-wide v3, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    iget-object v7, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[J

    invoke-direct/range {v0 .. v7}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJJ[J)V

    return-object v0

    :cond_1
    if-gez v4, :cond_5

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[J

    if-eqz v0, :cond_5

    invoke-static {v0, p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->binarySearch([JJ)I

    move-result p1

    if-ltz p1, :cond_5

    new-instance v1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    array-length p2, v0

    add-int/lit8 v2, p2, -0x1

    if-nez v2, :cond_2

    const/4 p1, 0x0

    move-object v8, p1

    goto :goto_0

    :cond_2
    new-array v3, v2, [J

    if-lez p1, :cond_3

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v4, p1}, Lkotlin/collections/ArraysKt;->copyInto([J[JIII)V

    :cond_3
    if-ge p1, v2, :cond_4

    add-int/lit8 v2, p1, 0x1

    invoke-static {v0, v3, p1, v2, p2}, Lkotlin/collections/ArraysKt;->copyInto([J[JIII)V

    :cond_4
    move-object v8, v3

    :goto_0
    iget-wide v2, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    iget-wide v4, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    iget-wide v6, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:J

    invoke-direct/range {v1 .. v8}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJJ[J)V

    return-object v1

    :cond_5
    return-object p0
.end method

.method public final get(J)Z
    .locals 12

    iget-wide v0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const-wide/16 v5, 0x1

    const-wide/16 v7, 0x40

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-ltz v4, :cond_1

    cmp-long v11, v0, v7

    if-gez v11, :cond_1

    long-to-int p1, v0

    shl-long p1, v5, p1

    iget-wide v0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    and-long p0, p1, v0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_0

    return v9

    :cond_0
    return v10

    :cond_1
    cmp-long v7, v0, v7

    if-ltz v7, :cond_3

    const-wide/16 v7, 0x80

    cmp-long v7, v0, v7

    if-gez v7, :cond_3

    long-to-int p1, v0

    add-int/lit8 p1, p1, -0x40

    shl-long p1, v5, p1

    iget-wide v0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    and-long p0, p1, v0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_2

    return v9

    :cond_2
    return v10

    :cond_3
    if-lez v4, :cond_4

    return v10

    :cond_4
    iget-object p0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[J

    if-eqz p0, :cond_5

    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->binarySearch([JJ)I

    move-result p0

    if-ltz p0, :cond_5

    return v9

    :cond_5
    return v10
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;-><init>(Landroidx/compose/runtime/snapshots/SnapshotIdSet;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlin/sequences/SequencesKt__SequenceBuilderKt;->iterator(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/SequenceBuilderIterator;

    move-result-object p0

    return-object p0
.end method

.method public final or(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/SnapshotIdSet;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->EMPTY:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_0
    if-ne v0, v2, :cond_1

    return-object v1

    :cond_1
    iget-wide v2, v1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:J

    iget-wide v4, v1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:J

    iget-object v6, v1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[J

    iget-wide v7, v1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    iget-wide v9, v1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    iget-wide v11, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:J

    cmp-long v2, v2, v11

    iget-wide v13, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    move v3, v2

    iget-wide v1, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    if-nez v3, :cond_2

    iget-object v3, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[J

    if-ne v6, v3, :cond_2

    move-wide/from16 v16, v11

    new-instance v11, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-wide v14, v13

    or-long v12, v1, v9

    or-long/2addr v14, v7

    move-object/from16 v18, v3

    invoke-direct/range {v11 .. v18}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJJ[J)V

    return-object v11

    :cond_2
    move-wide v14, v13

    const/16 v3, 0x40

    const/4 v13, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x1

    iget-object v11, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[J

    if-nez v11, :cond_9

    if-eqz v11, :cond_3

    array-length v4, v11

    move-object/from16 v5, p1

    move v6, v13

    :goto_0
    if-ge v6, v4, :cond_4

    aget-wide v7, v11, v6

    invoke-virtual {v5, v7, v8}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->set(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v5, p1

    :cond_4
    cmp-long v4, v14, v16

    iget-wide v6, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:J

    if-eqz v4, :cond_6

    move v0, v13

    :goto_1
    if-ge v0, v3, :cond_6

    shl-long v8, v18, v0

    and-long/2addr v8, v14

    cmp-long v4, v8, v16

    if-eqz v4, :cond_5

    int-to-long v8, v0

    add-long/2addr v8, v6

    invoke-virtual {v5, v8, v9}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->set(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v4

    move-object v5, v4

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    cmp-long v0, v1, v16

    if-eqz v0, :cond_8

    :goto_2
    if-ge v13, v3, :cond_8

    shl-long v8, v18, v13

    and-long/2addr v8, v1

    cmp-long v0, v8, v16

    if-eqz v0, :cond_7

    int-to-long v8, v13

    add-long/2addr v8, v6

    int-to-long v10, v3

    add-long/2addr v8, v10

    invoke-virtual {v5, v8, v9}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->set(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v0

    move-object v5, v0

    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_8
    return-object v5

    :cond_9
    if-eqz v6, :cond_a

    array-length v1, v6

    move v2, v13

    :goto_3
    if-ge v2, v1, :cond_a

    aget-wide v11, v6, v2

    invoke-virtual {v0, v11, v12}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->set(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    cmp-long v1, v7, v16

    if-eqz v1, :cond_c

    move v1, v13

    :goto_4
    if-ge v1, v3, :cond_c

    shl-long v11, v18, v1

    and-long/2addr v11, v7

    cmp-long v2, v11, v16

    if-eqz v2, :cond_b

    int-to-long v11, v1

    add-long/2addr v11, v4

    invoke-virtual {v0, v11, v12}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->set(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v0

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_c
    cmp-long v1, v9, v16

    if-eqz v1, :cond_e

    :goto_5
    if-ge v13, v3, :cond_e

    shl-long v1, v18, v13

    and-long/2addr v1, v9

    cmp-long v1, v1, v16

    if-eqz v1, :cond_d

    int-to-long v1, v13

    add-long/2addr v1, v4

    int-to-long v6, v3

    add-long/2addr v1, v6

    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->set(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v0

    :cond_d
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_e
    return-object v0
.end method

.method public final set(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;
    .locals 28

    move-object/from16 v0, p0

    iget-wide v5, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:J

    sub-long v3, p1, v5

    const-wide/16 v7, 0x0

    cmp-long v9, v3, v7

    move-wide/from16 v10, p1

    iget-wide v1, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    iget-wide v12, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    const-wide/16 v14, 0x40

    move-wide/from16 v16, v7

    iget-object v7, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[J

    const-wide/16 v18, 0x1

    if-ltz v9, :cond_0

    cmp-long v8, v3, v14

    if-gez v8, :cond_0

    long-to-int v3, v3

    shl-long v3, v18, v3

    and-long v8, v12, v3

    cmp-long v8, v8, v16

    if-nez v8, :cond_e

    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    or-long/2addr v3, v12

    invoke-direct/range {v0 .. v7}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJJ[J)V

    return-object v0

    :cond_0
    cmp-long v8, v3, v14

    const-wide/16 v14, 0x80

    const/16 v9, 0x40

    if-ltz v8, :cond_1

    cmp-long v8, v3, v14

    if-gez v8, :cond_1

    long-to-int v3, v3

    sub-int/2addr v3, v9

    shl-long v3, v18, v3

    and-long v8, v1, v3

    cmp-long v8, v8, v16

    if-nez v8, :cond_e

    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    or-long/2addr v1, v3

    move-wide v3, v12

    invoke-direct/range {v0 .. v7}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJJ[J)V

    return-object v0

    :cond_1
    cmp-long v3, v3, v14

    if-ltz v3, :cond_c

    invoke-virtual/range {p0 .. p2}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->get(J)Z

    move-result v3

    if-nez v3, :cond_e

    add-long v5, v10, v18

    int-to-long v14, v9

    div-long/2addr v5, v14

    mul-long/2addr v5, v14

    cmp-long v3, v5, v16

    if-gez v3, :cond_2

    const-wide v5, 0x7fffffffffffff80L

    :cond_2
    const/4 v8, 0x0

    iget-wide v3, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:J

    move-wide/from16 v21, v1

    const/4 v0, 0x0

    :goto_0
    cmp-long v1, v3, v5

    if-gez v1, :cond_7

    cmp-long v1, v12, v16

    if-eqz v1, :cond_5

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/gms/tasks/zzad;

    invoke-direct {v0, v7}, Lcom/google/android/gms/tasks/zzad;-><init>([J)V

    :cond_3
    move v1, v8

    :goto_1
    if-ge v1, v9, :cond_5

    shl-long v23, v18, v1

    and-long v23, v12, v23

    cmp-long v2, v23, v16

    move/from16 v23, v8

    if-eqz v2, :cond_4

    int-to-long v8, v1

    add-long/2addr v8, v3

    iget-object v2, v0, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    check-cast v2, Landroidx/collection/MutableLongList;

    invoke-virtual {v2, v8, v9}, Landroidx/collection/MutableLongList;->add(J)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    move/from16 v8, v23

    const/16 v9, 0x40

    goto :goto_1

    :cond_5
    move/from16 v23, v8

    cmp-long v1, v21, v16

    if-nez v1, :cond_6

    move-wide/from16 v25, v5

    move/from16 v8, v23

    move-wide/from16 v23, v16

    goto :goto_2

    :cond_6
    add-long/2addr v3, v14

    move-wide/from16 v12, v21

    move/from16 v8, v23

    const/16 v9, 0x40

    move-wide/from16 v21, v16

    goto :goto_0

    :cond_7
    move-wide/from16 v25, v3

    move-wide/from16 v23, v12

    :goto_2
    new-instance v20, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    if-eqz v0, :cond_b

    iget-object v0, v0, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    check-cast v0, Landroidx/collection/MutableLongList;

    iget v1, v0, Landroidx/collection/MutableLongList;->_size:I

    if-nez v1, :cond_8

    const/4 v2, 0x0

    goto :goto_4

    :cond_8
    new-array v2, v1, [J

    iget-object v0, v0, Landroidx/collection/MutableLongList;->content:[J

    move v4, v8

    :goto_3
    if-ge v4, v1, :cond_9

    aget-wide v5, v0, v4

    aput-wide v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    if-nez v2, :cond_a

    goto :goto_5

    :cond_a
    move-object/from16 v27, v2

    goto :goto_6

    :cond_b
    :goto_5
    move-object/from16 v27, v7

    :goto_6
    invoke-direct/range {v20 .. v27}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJJ[J)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v10, v11}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->set(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v0

    return-object v0

    :cond_c
    const/4 v8, 0x0

    const/4 v3, 0x1

    if-nez v7, :cond_d

    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    new-array v7, v3, [J

    aput-wide v10, v7, v8

    move-wide v3, v12

    invoke-direct/range {v0 .. v7}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJJ[J)V

    return-object v0

    :cond_d
    invoke-static {v7, v10, v11}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->binarySearch([JJ)I

    move-result v1

    if-gez v1, :cond_e

    add-int/2addr v1, v3

    neg-int v1, v1

    array-length v2, v7

    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [J

    invoke-static {v7, v3, v8, v8, v1}, Lkotlin/collections/ArraysKt;->copyInto([J[JIII)V

    add-int/lit8 v4, v1, 0x1

    invoke-static {v7, v3, v4, v1, v2}, Lkotlin/collections/ArraysKt;->copyInto([J[JIII)V

    aput-wide v10, v3, v1

    new-instance v9, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    iget-wide v12, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    iget-wide v14, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:J

    iget-wide v10, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    move-object/from16 v16, v3

    invoke-direct/range {v9 .. v16}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJJ[J)V

    return-object v9

    :cond_e
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v4, v3, :cond_5

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x1

    add-int/2addr v5, v7

    if-le v5, v7, :cond_1

    const-string v8, ", "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_1
    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    instance-of v7, v6, Ljava/lang/CharSequence;

    :goto_2
    if-eqz v7, :cond_3

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_3

    :cond_3
    instance-of v7, v6, Ljava/lang/Character;

    if-eqz v7, :cond_4

    check-cast v6, Ljava/lang/Character;

    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C

    move-result v6

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    goto :goto_3

    :cond_4
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

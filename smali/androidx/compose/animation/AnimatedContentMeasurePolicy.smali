.class public final Landroidx/compose/animation/AnimatedContentMeasurePolicy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# instance fields
.field public final rootScope:Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/AnimatedContentMeasurePolicy;->rootScope:Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    return-void
.end method


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, p3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v5, v4, [Landroidx/compose/ui/layout/Placeable;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v6

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    :goto_0
    const/16 v13, 0x20

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-ge v10, v6, :cond_2

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v9, v16

    check-cast v9, Landroidx/compose/ui/layout/Measurable;

    const-wide v18, 0xffffffffL

    invoke-interface {v9}, Landroidx/compose/ui/layout/Measurable;->getParentData()Ljava/lang/Object;

    move-result-object v11

    instance-of v12, v11, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$ChildData;

    if-eqz v12, :cond_0

    move-object v14, v11

    check-cast v14, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$ChildData;

    :cond_0
    if-eqz v14, :cond_1

    iget-object v11, v14, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$ChildData;->isTarget$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v11}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-ne v11, v15, :cond_1

    invoke-interface {v9, v2, v3}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v7

    iget v8, v7, Landroidx/compose/ui/layout/Placeable;->width:I

    iget v9, v7, Landroidx/compose/ui/layout/Placeable;->height:I

    int-to-long v11, v8

    shl-long/2addr v11, v13

    int-to-long v8, v9

    and-long v8, v8, v18

    or-long/2addr v8, v11

    aput-object v7, v5, v10

    move-wide v7, v8

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    const/16 v17, 0x0

    const-wide v18, 0xffffffffL

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v6

    move/from16 v9, v17

    :goto_1
    if-ge v9, v6, :cond_4

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/layout/Measurable;

    aget-object v11, v5, v9

    if-nez v11, :cond_3

    invoke-interface {v10, v2, v3}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v10

    aput-object v10, v5, v9

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/MeasureScope;->isLookingAhead()Z

    move-result v1

    if-eqz v1, :cond_5

    shr-long v1, v7, v13

    long-to-int v1, v1

    goto :goto_6

    :cond_5
    if-nez v4, :cond_6

    move-object v1, v14

    goto :goto_5

    :cond_6
    aget-object v1, v5, v17

    add-int/lit8 v2, v4, -0x1

    if-nez v2, :cond_7

    goto :goto_5

    :cond_7
    if-eqz v1, :cond_8

    iget v3, v1, Landroidx/compose/ui/layout/Placeable;->width:I

    goto :goto_2

    :cond_8
    move/from16 v3, v17

    :goto_2
    new-instance v6, Lkotlin/ranges/IntRange;

    invoke-direct {v6, v15, v2, v15}, Lkotlin/ranges/IntProgression;-><init>(III)V

    invoke-virtual {v6}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    move-result-object v2

    :cond_9
    :goto_3
    iget-boolean v6, v2, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    if-eqz v6, :cond_b

    invoke-virtual {v2}, Lkotlin/ranges/IntProgressionIterator;->nextInt()I

    move-result v6

    aget-object v6, v5, v6

    if-eqz v6, :cond_a

    iget v9, v6, Landroidx/compose/ui/layout/Placeable;->width:I

    goto :goto_4

    :cond_a
    move/from16 v9, v17

    :goto_4
    if-ge v3, v9, :cond_9

    move-object v1, v6

    move v3, v9

    goto :goto_3

    :cond_b
    :goto_5
    if-eqz v1, :cond_c

    iget v1, v1, Landroidx/compose/ui/layout/Placeable;->width:I

    goto :goto_6

    :cond_c
    move/from16 v1, v17

    :goto_6
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/MeasureScope;->isLookingAhead()Z

    move-result v2

    if-eqz v2, :cond_d

    and-long v2, v7, v18

    long-to-int v9, v2

    goto :goto_b

    :cond_d
    if-nez v4, :cond_e

    goto :goto_a

    :cond_e
    aget-object v14, v5, v17

    sub-int/2addr v4, v15

    if-nez v4, :cond_f

    goto :goto_a

    :cond_f
    if-eqz v14, :cond_10

    iget v2, v14, Landroidx/compose/ui/layout/Placeable;->height:I

    goto :goto_7

    :cond_10
    move/from16 v2, v17

    :goto_7
    new-instance v3, Lkotlin/ranges/IntRange;

    invoke-direct {v3, v15, v4, v15}, Lkotlin/ranges/IntProgression;-><init>(III)V

    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    move-result-object v3

    :cond_11
    :goto_8
    iget-boolean v4, v3, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    if-eqz v4, :cond_13

    invoke-virtual {v3}, Lkotlin/ranges/IntProgressionIterator;->nextInt()I

    move-result v4

    aget-object v4, v5, v4

    if-eqz v4, :cond_12

    iget v6, v4, Landroidx/compose/ui/layout/Placeable;->height:I

    goto :goto_9

    :cond_12
    move/from16 v6, v17

    :goto_9
    if-ge v2, v6, :cond_11

    move-object v14, v4

    move v2, v6

    goto :goto_8

    :cond_13
    :goto_a
    if-eqz v14, :cond_14

    iget v9, v14, Landroidx/compose/ui/layout/Placeable;->height:I

    goto :goto_b

    :cond_14
    move/from16 v9, v17

    :goto_b
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/MeasureScope;->isLookingAhead()Z

    move-result v2

    if-nez v2, :cond_15

    int-to-long v2, v1

    shl-long/2addr v2, v13

    int-to-long v6, v9

    and-long v6, v6, v18

    or-long/2addr v2, v6

    iget-object v4, v0, Landroidx/compose/animation/AnimatedContentMeasurePolicy;->rootScope:Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    iget-object v4, v4, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->measuredSize$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance v6, Landroidx/compose/ui/unit/IntSize;

    invoke-direct {v6, v2, v3}, Landroidx/compose/ui/unit/IntSize;-><init>(J)V

    invoke-virtual {v4, v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    :cond_15
    new-instance v2, Landroidx/compose/ui/text/MultiParagraph$getPathForRange$2;

    invoke-direct {v2, v5, v0, v1, v9}, Landroidx/compose/ui/text/MultiParagraph$getPathForRange$2;-><init>([Landroidx/compose/ui/layout/Placeable;Landroidx/compose/animation/AnimatedContentMeasurePolicy;II)V

    sget-object v0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    move-object/from16 v3, p1

    invoke-interface {v3, v1, v9, v0, v2}, Landroidx/compose/ui/layout/MeasureScope;->layout$1(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method

.class public final synthetic Le/L$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:J

.field public final synthetic f$10:J

.field public final synthetic f$2:F

.field public final synthetic f$3:J

.field public final synthetic f$4:F

.field public final synthetic f$5:F

.field public final synthetic f$6:Le/D;

.field public final synthetic f$7:Ljava/util/List;

.field public final synthetic f$8:J

.field public final synthetic f$9:J


# direct methods
.method public synthetic constructor <init>(JJFJFFLe/D;Ljava/util/List;JJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Le/L$$ExternalSyntheticLambda1;->f$0:J

    iput-wide p3, p0, Le/L$$ExternalSyntheticLambda1;->f$1:J

    iput p5, p0, Le/L$$ExternalSyntheticLambda1;->f$2:F

    iput-wide p6, p0, Le/L$$ExternalSyntheticLambda1;->f$3:J

    iput p8, p0, Le/L$$ExternalSyntheticLambda1;->f$4:F

    iput p9, p0, Le/L$$ExternalSyntheticLambda1;->f$5:F

    iput-object p10, p0, Le/L$$ExternalSyntheticLambda1;->f$6:Le/D;

    iput-object p11, p0, Le/L$$ExternalSyntheticLambda1;->f$7:Ljava/util/List;

    iput-wide p12, p0, Le/L$$ExternalSyntheticLambda1;->f$8:J

    iput-wide p14, p0, Le/L$$ExternalSyntheticLambda1;->f$9:J

    move-wide/from16 p1, p16

    iput-wide p1, p0, Le/L$$ExternalSyntheticLambda1;->f$10:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 36

    move-object/from16 v0, p0

    iget-wide v1, v0, Le/L$$ExternalSyntheticLambda1;->f$0:J

    iget-wide v3, v0, Le/L$$ExternalSyntheticLambda1;->f$1:J

    iget v5, v0, Le/L$$ExternalSyntheticLambda1;->f$2:F

    iget-wide v6, v0, Le/L$$ExternalSyntheticLambda1;->f$3:J

    iget v8, v0, Le/L$$ExternalSyntheticLambda1;->f$4:F

    iget v9, v0, Le/L$$ExternalSyntheticLambda1;->f$5:F

    iget-object v10, v0, Le/L$$ExternalSyntheticLambda1;->f$6:Le/D;

    iget-object v11, v0, Le/L$$ExternalSyntheticLambda1;->f$7:Ljava/util/List;

    iget-wide v12, v0, Le/L$$ExternalSyntheticLambda1;->f$8:J

    iget-wide v14, v0, Le/L$$ExternalSyntheticLambda1;->f$9:J

    move-wide/from16 v16, v1

    iget-wide v0, v0, Le/L$$ExternalSyntheticLambda1;->f$10:J

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    move-wide/from16 v22, v0

    const-string v0, "$this$Canvas"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/core/view/MenuHostHelper;

    move-result-object v1

    move-wide/from16 v18, v3

    invoke-virtual {v1}, Landroidx/core/view/MenuHostHelper;->getSize-NH-jbRc()J

    move-result-wide v3

    invoke-virtual {v1}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/Canvas;->save()V

    :try_start_0
    iget-object v0, v1, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    const/16 v20, 0x20

    move-wide/from16 v25, v6

    shr-long v6, v16, v20

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    move/from16 p0, v6

    shr-long v6, v18, v20

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    add-float v6, p0, v6

    const-wide v27, 0xffffffffL

    move-wide/from16 v29, v14

    and-long v14, v16, v27

    long-to-int v7, v14

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    and-long v14, v18, v27

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v14

    add-float/2addr v7, v14

    invoke-virtual {v0, v6, v7}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->translate(FF)V

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->rotate-Uv8p0NA(FJ)V

    shr-long v14, v25, v20

    long-to-int v5, v14

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    neg-float v5, v5

    and-long v14, v25, v27

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v14

    neg-float v14, v14

    invoke-virtual {v0, v5, v14}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->translate(FF)V

    invoke-interface {v2, v8}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v0

    const/16 v5, 0x19

    int-to-float v5, v5

    invoke-interface {v2, v5}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v5

    const/16 v8, 0xa

    int-to-float v14, v8

    invoke-interface {v2, v14}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v14

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v15

    int-to-long v6, v15

    invoke-static {v14}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v14

    int-to-long v14, v14

    shl-long v6, v6, v20

    and-long v14, v14, v27

    or-long/2addr v6, v14

    invoke-interface {v2, v9}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v15

    new-instance v14, Landroidx/compose/ui/graphics/drawscope/Stroke;

    const/16 v18, 0x0

    const/16 v19, 0x1e

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v19}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIII)V

    move-object v9, v14

    iget-object v14, v10, Le/D;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iget-object v10, v10, Le/D;->f:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-object/from16 v16, v2

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v11, v8}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/16 v17, 0x0

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    const/16 v25, 0x0

    if-eqz v18, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    add-int/lit8 v19, v17, 0x1

    if-ltz v17, :cond_1

    move-object/from16 v11, v18

    check-cast v11, Landroidx/compose/ui/geometry/Offset;

    move-wide/from16 v26, v6

    iget-wide v6, v11, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    invoke-virtual {v14}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    move-object/from16 v18, v8

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v11, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v10}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/geometry/Offset;

    move-object v11, v9

    iget-wide v8, v8, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    invoke-static {v8, v9, v12, v13}, La/l;->a(JJ)J

    move-result-wide v8

    goto :goto_1

    :catchall_0
    move-exception v0

    move-wide v2, v3

    goto/16 :goto_8

    :cond_0
    move-object v11, v9

    const-wide/16 v8, 0x0

    :goto_1
    invoke-static {v6, v7, v8, v9}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v6

    new-instance v8, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {v8, v6, v7}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v9, v11

    move-object/from16 v8, v18

    move/from16 v17, v19

    move-wide/from16 v6, v26

    goto :goto_0

    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v25

    :cond_2
    move-wide/from16 v26, v6

    move-object v11, v9

    invoke-static {v2}, Le/W;->a(Ljava/util/ArrayList;)Le/t;

    move-result-object v2

    iget-object v6, v2, Le/t;->e:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v6}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/C;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x0

    const/16 v20, 0x0

    :goto_2
    const/4 v8, 0x4

    if-ge v7, v8, :cond_a

    add-int/lit8 v8, v7, 0x1

    :try_start_1
    rem-int/lit8 v7, v7, 0x4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    const/4 v10, 0x2

    const/4 v12, -0x1

    const/4 v13, -0x2

    const/4 v14, -0x3

    const/4 v9, 0x1

    if-eq v7, v14, :cond_5

    if-eq v7, v13, :cond_4

    if-eq v7, v12, :cond_3

    if-eq v7, v9, :cond_5

    if-eq v7, v10, :cond_4

    const/4 v10, 0x3

    if-eq v7, v10, :cond_3

    :try_start_2
    iget-wide v9, v2, Le/t;->a:J

    goto :goto_3

    :cond_3
    iget-wide v9, v2, Le/t;->d:J

    goto :goto_3

    :cond_4
    iget-wide v9, v2, Le/t;->c:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_5
    :try_start_3
    iget-wide v9, v2, Le/t;->b:J

    :goto_3
    add-int/lit8 v28, v20, 0x1

    if-ltz v20, :cond_9

    rem-int/lit8 v7, v20, 0x4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    if-eq v7, v14, :cond_8

    if-eq v7, v13, :cond_7

    if-eq v7, v12, :cond_6

    const/4 v12, 0x1

    if-eq v7, v12, :cond_8

    const/4 v12, 0x2

    if-eq v7, v12, :cond_7

    const/4 v12, 0x3

    if-eq v7, v12, :cond_6

    :try_start_4
    iget-object v7, v6, Le/C;->a:Le/m1;

    goto :goto_4

    :cond_6
    iget-object v7, v6, Le/C;->d:Le/m1;

    goto :goto_4

    :cond_7
    iget-object v7, v6, Le/C;->c:Le/m1;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :cond_8
    :try_start_5
    iget-object v7, v6, Le/C;->b:Le/m1;

    :goto_4
    iget-wide v12, v7, Le/m1;->a:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    move/from16 p0, v15

    :try_start_6
    iget-wide v14, v7, Le/m1;->b:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    move-object/from16 p1, v2

    const/high16 v2, 0x40000000    # 2.0f

    move-wide/from16 v31, v3

    :try_start_7
    invoke-static {v2, v12, v13}, Landroidx/compose/ui/geometry/Offset;->div-tuRUvjQ(FJ)J

    move-result-wide v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    invoke-static {v9, v10, v3, v4}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v3

    move-wide/from16 v33, v3

    invoke-static {v0, v14, v15}, Landroidx/compose/ui/geometry/Offset;->times-tuRUvjQ(FJ)J

    move-result-wide v2

    invoke-static {v5, v14, v15}, Landroidx/compose/ui/geometry/Offset;->times-tuRUvjQ(FJ)J

    move-result-wide v14

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4, v14, v15}, Landroidx/compose/ui/geometry/Offset;->div-tuRUvjQ(FJ)J

    move-result-wide v14

    invoke-static {v9, v10, v2, v3}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v18

    move/from16 v35, v5

    move-wide/from16 v4, v33

    invoke-static {v4, v5, v14, v15}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v20
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move/from16 v34, v0

    move-object/from16 v33, v1

    move-wide v0, v14

    move-object/from16 v14, v16

    move-wide/from16 v16, v29

    move/from16 v15, p0

    :try_start_9
    invoke-interface/range {v14 .. v21}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawLine-NGM6Ib0(FJJJ)V

    invoke-static {v4, v5, v0, v1}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v18

    invoke-static {v9, v10, v12, v13}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v0

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v20

    invoke-interface/range {v14 .. v21}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawLine-NGM6Ib0(FJJJ)V

    move v0, v15

    move-wide/from16 v29, v16

    iget v1, v7, Le/m1;->c:F

    invoke-interface {v14}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/core/view/MenuHostHelper;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/core/view/MenuHostHelper;->getSize-NH-jbRc()J

    move-result-wide v9

    invoke-virtual {v2}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v3

    invoke-interface {v3}, Landroidx/compose/ui/graphics/Canvas;->save()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    iget-object v3, v2, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    invoke-virtual {v3, v1, v4, v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->rotate-Uv8p0NA(FJ)V

    invoke-static/range {v26 .. v27}, Landroidx/compose/ui/geometry/SizeKt;->getCenter-uvyYCjk(J)J

    move-result-wide v12

    invoke-static {v4, v5, v12, v13}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v17

    move-wide/from16 v19, v17

    move-wide/from16 v17, v22

    const/16 v23, 0x0

    const/16 v24, 0x78

    move-object/from16 v16, v14

    move-wide/from16 v21, v26

    invoke-static/range {v16 .. v24}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRect-n-J9OG0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJLandroidx/compose/ui/graphics/drawscope/Stroke;I)V

    move-wide/from16 v3, v17

    move-wide/from16 v17, v19

    move-wide/from16 v19, v21

    const/16 v22, 0x68

    move-object/from16 v21, v11

    move-wide/from16 v15, v29

    invoke-static/range {v14 .. v22}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRect-n-J9OG0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJLandroidx/compose/ui/graphics/drawscope/Stroke;I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-wide/from16 v16, v15

    :try_start_b
    invoke-virtual {v2}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    invoke-virtual {v2, v9, v10}, Landroidx/core/view/MenuHostHelper;->setSize-uvyYCjk(J)V

    move-object/from16 v2, p1

    move v15, v0

    move-wide/from16 v22, v3

    move v7, v8

    move-wide/from16 v29, v16

    move-wide/from16 v26, v19

    move-object/from16 v11, v21

    move/from16 v20, v28

    move-wide/from16 v3, v31

    move-object/from16 v1, v33

    move/from16 v0, v34

    move/from16 v5, v35

    move-object/from16 v16, v14

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    :goto_5
    move-wide/from16 v2, v31

    move-object/from16 v1, v33

    goto :goto_8

    :catchall_2
    move-exception v0

    invoke-virtual {v2}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    invoke-virtual {v2, v9, v10}, Landroidx/core/view/MenuHostHelper;->setSize-uvyYCjk(J)V

    throw v0

    :catchall_3
    move-exception v0

    move-object/from16 v33, v1

    :goto_6
    move-wide/from16 v2, v31

    goto :goto_8

    :catchall_4
    move-exception v0

    :goto_7
    move-object/from16 v33, v1

    goto :goto_5

    :catchall_5
    move-exception v0

    move-wide/from16 v31, v3

    goto :goto_7

    :catchall_6
    move-exception v0

    move-object/from16 v33, v1

    move-wide/from16 v31, v3

    goto :goto_6

    :cond_9
    move-object/from16 v33, v1

    move-wide/from16 v31, v3

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v25
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_a
    move-object/from16 v33, v1

    move-wide/from16 v31, v3

    invoke-virtual/range {v33 .. v33}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    move-wide/from16 v2, v31

    invoke-virtual {v1, v2, v3}, Landroidx/core/view/MenuHostHelper;->setSize-uvyYCjk(J)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :goto_8
    invoke-virtual {v1}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    invoke-virtual {v1, v2, v3}, Landroidx/core/view/MenuHostHelper;->setSize-uvyYCjk(J)V

    throw v0
.end method

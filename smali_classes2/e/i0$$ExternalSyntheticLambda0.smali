.class public final synthetic Le/i0$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lc/v1;

.field public final synthetic f$1:Lc/X;

.field public final synthetic f$2:Landroidx/compose/ui/input/pointer/PointerInputScope;

.field public final synthetic f$3:Landroidx/compose/runtime/State;

.field public final synthetic f$4:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lc/v1;Lc/X;Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/i0$$ExternalSyntheticLambda0;->f$0:Lc/v1;

    iput-object p2, p0, Le/i0$$ExternalSyntheticLambda0;->f$1:Lc/X;

    iput-object p3, p0, Le/i0$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/ui/input/pointer/PointerInputScope;

    iput-object p4, p0, Le/i0$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/runtime/State;

    iput-object p5, p0, Le/i0$$ExternalSyntheticLambda0;->f$4:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/geometry/Offset;

    iget-object v4, v0, Le/i0$$ExternalSyntheticLambda0;->f$0:Lc/v1;

    invoke-virtual {v4}, Lc/v1;->d()Z

    move-result v2

    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    if-nez v2, :cond_0

    return-object v8

    :cond_0
    new-instance v2, Le/d0;

    iget-object v3, v0, Le/i0$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/ui/input/pointer/PointerInputScope;

    check-cast v3, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    iget-wide v5, v3, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->boundsSize:J

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v5

    iget-object v3, v0, Le/i0$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/runtime/State;

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v7

    iget-object v3, v0, Le/i0$$ExternalSyntheticLambda0;->f$1:Lc/X;

    invoke-direct/range {v2 .. v7}, Le/d0;-><init>(Lc/X;Lc/v1;JF)V

    iget-object v3, v4, Lc/v1;->c:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getIndices(Ljava/util/Collection;)Lkotlin/ranges/IntRange;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    move-result-object v3

    const/4 v4, -0x1

    :goto_0
    iget-boolean v5, v3, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    if-eqz v5, :cond_e

    invoke-virtual {v3}, Lkotlin/ranges/IntProgressionIterator;->nextInt()I

    move-result v5

    invoke-virtual {v2, v5}, Le/d0;->a(I)[F

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    iget-object v9, v2, Le/d0;->n:[F

    invoke-static {v6, v9}, Landroidx/compose/ui/graphics/Brush;->timesAssign-58bKbWc([F[F)V

    iget-object v9, v2, Le/d0;->m:[F

    invoke-static {v6, v9}, Landroidx/compose/ui/graphics/Brush;->timesAssign-58bKbWc([F[F)V

    goto :goto_1

    :cond_1
    move-object v6, v7

    :goto_1
    const/4 v9, 0x1

    if-eqz v6, :cond_3

    iget-object v10, v2, Le/d0;->b:Lc/v1;

    iget-object v10, v10, Lc/v1;->c:Ljava/lang/Object;

    invoke-static {v10, v5}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lc/x;

    if-eqz v10, :cond_2

    iget-object v10, v10, Lc/x;->a:Lc/H;

    iget v11, v10, Lc/H;->a:I

    int-to-float v11, v11

    iget v10, v10, Lc/H;->b:I

    int-to-float v10, v10

    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v11

    int-to-long v11, v11

    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v10

    int-to-long v13, v10

    const/16 v10, 0x20

    shl-long v10, v11, v10

    const-wide v15, 0xffffffffL

    and-long v12, v13, v15

    or-long/2addr v10, v12

    new-instance v12, Landroidx/compose/ui/geometry/Size;

    invoke-direct {v12, v10, v11}, Landroidx/compose/ui/geometry/Size;-><init>(J)V

    goto :goto_2

    :cond_2
    move-object v12, v7

    :goto_2
    if-eqz v12, :cond_3

    iget-wide v10, v12, Landroidx/compose/ui/geometry/Size;->packedValue:J

    const-wide/16 v12, 0x0

    invoke-static {v12, v13, v10, v11}, Landroidx/compose/ui/geometry/RectKt;->Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;

    move-result-object v7

    array-length v10, v6

    const/16 v11, 0x10

    if-ge v10, v11, :cond_4

    :cond_3
    move-object/from16 v18, v2

    move-object/from16 v27, v3

    move/from16 v29, v4

    move/from16 v22, v5

    goto/16 :goto_6

    :cond_4
    const/4 v10, 0x0

    aget v10, v6, v10

    aget v11, v6, v9

    const/4 v12, 0x3

    aget v12, v6, v12

    const/4 v13, 0x4

    aget v13, v6, v13

    const/4 v14, 0x5

    aget v14, v6, v14

    const/4 v15, 0x7

    aget v15, v6, v15

    const/16 v16, 0xc

    aget v16, v6, v16

    const/16 v17, 0xd

    aget v17, v6, v17

    const/16 v18, 0xf

    aget v6, v6, v18

    iget v9, v7, Landroidx/compose/ui/geometry/Rect;->left:F

    move-object/from16 v18, v2

    iget v2, v7, Landroidx/compose/ui/geometry/Rect;->top:F

    move/from16 v19, v2

    iget v2, v7, Landroidx/compose/ui/geometry/Rect;->right:F

    iget v7, v7, Landroidx/compose/ui/geometry/Rect;->bottom:F

    mul-float v20, v12, v9

    mul-float v21, v15, v19

    add-float v22, v20, v21

    add-float v22, v22, v6

    const/high16 v23, 0x3f800000    # 1.0f

    div-float v22, v23, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v24

    const v25, 0x7fffffff

    move/from16 v26, v2

    and-int v2, v24, v25

    const/16 v24, 0x0

    move-object/from16 v27, v3

    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    if-ge v2, v3, :cond_5

    goto :goto_3

    :cond_5
    move/from16 v22, v24

    :goto_3
    mul-float v2, v10, v9

    mul-float v28, v13, v19

    add-float v29, v2, v28

    add-float v29, v29, v16

    mul-float v3, v29, v22

    mul-float/2addr v9, v11

    mul-float v19, v19, v14

    add-float v29, v9, v19

    add-float v29, v29, v17

    move/from16 v30, v2

    mul-float v2, v29, v22

    mul-float/2addr v15, v7

    add-float v20, v20, v15

    add-float v20, v20, v6

    div-float v20, v23, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v22

    move/from16 v29, v4

    and-int v4, v22, v25

    move/from16 v22, v5

    const/high16 v5, 0x7f800000    # Float.POSITIVE_INFINITY

    if-ge v4, v5, :cond_6

    goto :goto_4

    :cond_6
    move/from16 v20, v24

    :goto_4
    mul-float/2addr v13, v7

    add-float v4, v30, v13

    add-float v4, v4, v16

    mul-float v4, v4, v20

    mul-float/2addr v14, v7

    add-float/2addr v9, v14

    add-float v9, v9, v17

    mul-float v9, v9, v20

    mul-float v12, v12, v26

    add-float v21, v12, v21

    add-float v21, v21, v6

    div-float v5, v23, v21

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v7

    and-int v7, v7, v25

    move/from16 v20, v5

    const/high16 v5, 0x7f800000    # Float.POSITIVE_INFINITY

    if-ge v7, v5, :cond_7

    move/from16 v5, v20

    goto :goto_5

    :cond_7
    move/from16 v5, v24

    :goto_5
    mul-float v10, v10, v26

    add-float v28, v10, v28

    add-float v28, v28, v16

    mul-float v7, v28, v5

    mul-float v11, v11, v26

    add-float v19, v11, v19

    add-float v19, v19, v17

    mul-float v5, v5, v19

    add-float/2addr v12, v15

    add-float/2addr v12, v6

    div-float v23, v23, v12

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    and-int v6, v6, v25

    const/high16 v12, 0x7f800000    # Float.POSITIVE_INFINITY

    if-ge v6, v12, :cond_8

    move/from16 v24, v23

    :cond_8
    add-float/2addr v10, v13

    add-float v10, v10, v16

    mul-float v10, v10, v24

    add-float/2addr v11, v14

    add-float v11, v11, v17

    mul-float v11, v11, v24

    new-instance v6, Landroidx/compose/ui/geometry/Rect;

    invoke-static {v7, v10}, Ljava/lang/Math;->min(FF)F

    move-result v12

    invoke-static {v4, v12}, Ljava/lang/Math;->min(FF)F

    move-result v12

    invoke-static {v3, v12}, Ljava/lang/Math;->min(FF)F

    move-result v12

    invoke-static {v5, v11}, Ljava/lang/Math;->min(FF)F

    move-result v13

    invoke-static {v9, v13}, Ljava/lang/Math;->min(FF)F

    move-result v13

    invoke-static {v2, v13}, Ljava/lang/Math;->min(FF)F

    move-result v13

    invoke-static {v7, v10}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v5, v11}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v9, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-direct {v6, v12, v13, v3, v2}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    move-object v7, v6

    :goto_6
    if-eqz v7, :cond_d

    iget-wide v2, v1, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x20

    shr-long v4, v2, v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    const-wide v5, 0xffffffffL

    and-long/2addr v2, v5

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    iget v3, v7, Landroidx/compose/ui/geometry/Rect;->left:F

    cmpl-float v3, v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ltz v3, :cond_9

    move v3, v6

    goto :goto_7

    :cond_9
    move v3, v5

    :goto_7
    iget v9, v7, Landroidx/compose/ui/geometry/Rect;->right:F

    cmpg-float v4, v4, v9

    if-gez v4, :cond_a

    move v4, v6

    goto :goto_8

    :cond_a
    move v4, v5

    :goto_8
    and-int/2addr v3, v4

    iget v4, v7, Landroidx/compose/ui/geometry/Rect;->top:F

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_b

    move v4, v6

    goto :goto_9

    :cond_b
    move v4, v5

    :goto_9
    and-int/2addr v3, v4

    iget v4, v7, Landroidx/compose/ui/geometry/Rect;->bottom:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_c

    move v5, v6

    :cond_c
    and-int v2, v3, v5

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    move-object/from16 v2, v18

    move/from16 v4, v22

    move-object/from16 v3, v27

    goto/16 :goto_0

    :cond_d
    move-object/from16 v2, v18

    move-object/from16 v3, v27

    move/from16 v4, v29

    goto/16 :goto_0

    :cond_e
    move/from16 v29, v4

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v0, v0, Le/i0$$ExternalSyntheticLambda0;->f$4:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v8
.end method

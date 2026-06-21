.class public final synthetic Le/m0$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lc/v1;

.field public final synthetic f$1:Lc/X;

.field public final synthetic f$10:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$11:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$2:Landroidx/compose/runtime/State;

.field public final synthetic f$3:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$4:Landroidx/compose/runtime/State;

.field public final synthetic f$6:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$7:F

.field public final synthetic f$8:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$9:F


# direct methods
.method public synthetic constructor <init>(Lc/v1;Lc/X;Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;FLandroidx/compose/runtime/MutableState;FLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m0$$ExternalSyntheticLambda5;->f$0:Lc/v1;

    iput-object p2, p0, Le/m0$$ExternalSyntheticLambda5;->f$1:Lc/X;

    iput-object p3, p0, Le/m0$$ExternalSyntheticLambda5;->f$2:Landroidx/compose/runtime/State;

    iput-object p4, p0, Le/m0$$ExternalSyntheticLambda5;->f$3:Lkotlin/jvm/functions/Function2;

    iput-object p5, p0, Le/m0$$ExternalSyntheticLambda5;->f$4:Landroidx/compose/runtime/State;

    iput-object p6, p0, Le/m0$$ExternalSyntheticLambda5;->f$6:Landroidx/compose/runtime/MutableState;

    iput p7, p0, Le/m0$$ExternalSyntheticLambda5;->f$7:F

    iput-object p8, p0, Le/m0$$ExternalSyntheticLambda5;->f$8:Landroidx/compose/runtime/MutableState;

    iput p9, p0, Le/m0$$ExternalSyntheticLambda5;->f$9:F

    iput-object p10, p0, Le/m0$$ExternalSyntheticLambda5;->f$10:Landroidx/compose/runtime/MutableState;

    iput-object p11, p0, Le/m0$$ExternalSyntheticLambda5;->f$11:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 57

    move-object/from16 v0, p0

    iget-object v1, v0, Le/m0$$ExternalSyntheticLambda5;->f$4:Landroidx/compose/runtime/State;

    iget-object v2, v0, Le/m0$$ExternalSyntheticLambda5;->f$6:Landroidx/compose/runtime/MutableState;

    iget v3, v0, Le/m0$$ExternalSyntheticLambda5;->f$7:F

    iget-object v4, v0, Le/m0$$ExternalSyntheticLambda5;->f$8:Landroidx/compose/runtime/MutableState;

    iget v5, v0, Le/m0$$ExternalSyntheticLambda5;->f$9:F

    iget-object v6, v0, Le/m0$$ExternalSyntheticLambda5;->f$11:Landroidx/compose/runtime/MutableState;

    move-object/from16 v7, p1

    check-cast v7, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    const-string v8, "$this$Canvas"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v11, v0, Le/m0$$ExternalSyntheticLambda5;->f$0:Lc/v1;

    invoke-virtual {v11}, Lc/v1;->d()Z

    move-result v8

    sget-object v16, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    if-nez v8, :cond_0

    return-object v16

    :cond_0
    new-instance v9, Le/d0;

    invoke-interface {v7}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v12

    iget-object v8, v0, Le/m0$$ExternalSyntheticLambda5;->f$2:Landroidx/compose/runtime/State;

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->floatValue()F

    move-result v14

    iget-object v10, v0, Le/m0$$ExternalSyntheticLambda5;->f$1:Lc/X;

    invoke-direct/range {v9 .. v14}, Le/d0;-><init>(Lc/X;Lc/v1;JF)V

    iget-wide v12, v9, Le/d0;->e:J

    const/16 v11, 0x20

    shr-long v14, v12, v11

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v17

    const-wide v18, 0xffffffffL

    and-long v14, v12, v18

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v20

    iget-object v14, v0, Le/m0$$ExternalSyntheticLambda5;->f$3:Lkotlin/jvm/functions/Function2;

    iget-boolean v15, v9, Le/d0;->f:Z

    move/from16 p1, v11

    move-wide/from16 v21, v12

    iget-wide v11, v9, Le/d0;->i:J

    if-eqz v15, :cond_1

    move-object v13, v1

    move-object/from16 v23, v2

    and-long v1, v11, v18

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    shr-long v11, v11, p1

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    move/from16 v24, v1

    iget v1, v9, Le/d0;->k:F

    invoke-static {v2, v12, v1}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v2

    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    invoke-static {v11, v12, v1}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v1

    invoke-interface {v7}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v11

    move/from16 v24, v1

    new-instance v1, Landroidx/compose/ui/geometry/Size;

    invoke-direct {v1, v11, v12}, Landroidx/compose/ui/geometry/Size;-><init>(J)V

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v11, v2

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    move/from16 v24, v3

    int-to-long v2, v2

    shl-long v11, v11, p1

    and-long v2, v2, v18

    or-long/2addr v2, v11

    new-instance v11, Landroidx/compose/ui/geometry/Size;

    invoke-direct {v11, v2, v3}, Landroidx/compose/ui/geometry/Size;-><init>(J)V

    invoke-interface {v14, v1, v11}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object v13, v1

    move-object/from16 v23, v2

    move/from16 v24, v3

    invoke-interface {v7}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v1

    new-instance v3, Landroidx/compose/ui/geometry/Size;

    invoke-direct {v3, v1, v2}, Landroidx/compose/ui/geometry/Size;-><init>(J)V

    new-instance v1, Landroidx/compose/ui/geometry/Size;

    invoke-direct {v1, v11, v12}, Landroidx/compose/ui/geometry/Size;-><init>(J)V

    invoke-interface {v14, v3, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v1, v9, Le/d0;->m:[F

    const-wide/16 v2, 0x0

    move-wide/from16 v11, v21

    invoke-static {v2, v3, v11, v12}, Landroidx/compose/ui/geometry/RectKt;->Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;

    move-result-object v14

    invoke-interface {v7}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/core/view/MenuHostHelper;

    move-result-object v2

    move-object/from16 p1, v10

    invoke-virtual {v2}, Landroidx/core/view/MenuHostHelper;->getSize-NH-jbRc()J

    move-result-wide v10

    invoke-virtual {v2}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v3

    invoke-interface {v3}, Landroidx/compose/ui/graphics/Canvas;->save()V

    :try_start_0
    iget-object v3, v2, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    iget-object v12, v3, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->$this_asDrawTransform:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v12}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v12

    invoke-interface {v12, v1}, Landroidx/compose/ui/graphics/Canvas;->concat-58bKbWc([F)V

    iget v1, v14, Landroidx/compose/ui/geometry/Rect;->left:F

    iget v12, v14, Landroidx/compose/ui/geometry/Rect;->top:F

    move/from16 v26, v1

    iget v1, v14, Landroidx/compose/ui/geometry/Rect;->right:F

    iget v14, v14, Landroidx/compose/ui/geometry/Rect;->bottom:F

    const/16 v30, 0x10

    move/from16 v28, v1

    move-object/from16 v25, v3

    move/from16 v27, v12

    move/from16 v29, v14

    invoke-static/range {v25 .. v30}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->clipRect-N_I0leg$default(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;FFFFI)V

    invoke-interface {v13}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/Color;

    iget-wide v12, v1, Landroidx/compose/ui/graphics/Color;->value:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    const/4 v14, 0x0

    move v1, v15

    const/16 v15, 0x7a

    move-wide/from16 v25, v10

    const-wide/16 v10, 0x0

    move/from16 v54, v5

    move-object/from16 v5, p1

    move-wide/from16 v55, v25

    move/from16 v26, v1

    move-object/from16 v25, v8

    move-object v1, v9

    move-wide v8, v12

    move-wide/from16 v12, v21

    move-object/from16 v21, v4

    move/from16 v22, v54

    move-wide/from16 v3, v55

    :try_start_1
    invoke-static/range {v7 .. v15}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRect-n-J9OG0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJLandroidx/compose/ui/graphics/drawscope/Stroke;I)V

    iget-object v8, v1, Le/d0;->n:[F

    invoke-interface {v7}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/core/view/MenuHostHelper;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/core/view/MenuHostHelper;->getSize-NH-jbRc()J

    move-result-wide v10

    invoke-virtual {v9}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v12

    invoke-interface {v12}, Landroidx/compose/ui/graphics/Canvas;->save()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    :try_start_2
    iget-object v12, v9, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast v12, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    iget-object v12, v12, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->$this_asDrawTransform:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v12}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v12

    invoke-interface {v12, v8}, Landroidx/compose/ui/graphics/Canvas;->concat-58bKbWc([F)V

    invoke-interface/range {v23 .. v23}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v13, 0x0

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    if-eqz v14, :cond_9

    :try_start_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v23, v13, 0x1

    const/16 p1, 0x0

    if-ltz v13, :cond_8

    check-cast v14, Lc/I;

    const/16 v27, 0x2

    invoke-virtual {v1, v13}, Le/d0;->a(I)[F

    move-result-object v15

    if-nez v15, :cond_2

    move-object/from16 v29, v2

    move-wide/from16 v30, v3

    move-object/from16 v33, v5

    move-object/from16 v34, v6

    move-object/from16 v35, v8

    move-object/from16 v37, v9

    goto/16 :goto_6

    :cond_2
    invoke-interface {v7}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/core/view/MenuHostHelper;

    move-result-object v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-object/from16 v29, v2

    move-wide/from16 v30, v3

    :try_start_4
    invoke-virtual {v12}, Landroidx/core/view/MenuHostHelper;->getSize-NH-jbRc()J

    move-result-wide v2

    invoke-virtual {v12}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/ui/graphics/Canvas;->save()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    iget-object v4, v12, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    iget-object v4, v4, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->$this_asDrawTransform:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v4}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v4

    invoke-interface {v4, v15}, Landroidx/compose/ui/graphics/Canvas;->concat-58bKbWc([F)V

    invoke-interface/range {v21 .. v21}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/16 v15, 0x3e

    if-nez v4, :cond_3

    iget-object v4, v14, Lc/I;->a:Landroid/graphics/Bitmap;

    new-instance v13, Landroidx/compose/ui/graphics/AndroidImageBitmap;

    invoke-direct {v13, v4}, Landroidx/compose/ui/graphics/AndroidImageBitmap;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    invoke-static {v7, v13, v4, v15}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawImage-gbVJVH8$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/AndroidImageBitmap;Landroidx/compose/ui/graphics/ColorMatrixColorFilter;I)V

    move-object/from16 v33, v5

    move-object/from16 v34, v6

    move-object/from16 v35, v8

    move-object/from16 v37, v9

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    move-object/from16 v37, v9

    goto/16 :goto_9

    :cond_3
    const/high16 v4, -0x41000000    # -0.5f

    mul-float v4, v4, v24

    const/high16 v32, 0x3f000000    # 0.5f

    add-float v4, v4, v32

    const/high16 v32, 0x437f0000    # 255.0f

    mul-float v4, v4, v32

    new-instance v15, Landroid/graphics/ColorMatrix;

    invoke-direct {v15}, Landroid/graphics/ColorMatrix;-><init>()V

    move/from16 v33, v4

    const/16 v4, 0x14

    move-object/from16 v34, v6

    new-array v6, v4, [F

    aput v24, v6, p1

    const/16 v35, 0x1

    const/4 v4, 0x0

    aput v4, v6, v35

    aput v4, v6, v27

    const/16 v37, 0x3

    aput v4, v6, v37

    const/16 v38, 0x4

    aput v33, v6, v38

    const/16 v39, 0x5

    aput v4, v6, v39

    const/16 v40, 0x6

    aput v24, v6, v40

    const/16 v41, 0x7

    aput v4, v6, v41

    const/16 v42, 0x8

    aput v4, v6, v42

    const/16 v43, 0x9

    aput v33, v6, v43

    const/16 v44, 0xa

    aput v4, v6, v44

    const/16 v45, 0xb

    aput v4, v6, v45

    const/16 v46, 0xc

    aput v24, v6, v46

    const/16 v47, 0xd

    aput v4, v6, v47

    const/16 v48, 0xe

    aput v33, v6, v48

    const/16 v33, 0xf

    aput v4, v6, v33

    const/16 v49, 0x10

    aput v4, v6, v49

    const/16 v50, 0x11

    aput v4, v6, v50

    const/16 v51, 0x12

    const/high16 v52, 0x3f800000    # 1.0f

    aput v52, v6, v51

    const/16 v53, 0x13

    aput v4, v6, v53

    invoke-virtual {v15, v6}, Landroid/graphics/ColorMatrix;->set([F)V

    new-instance v6, Landroid/graphics/ColorMatrix;

    invoke-direct {v6}, Landroid/graphics/ColorMatrix;-><init>()V

    move/from16 v53, v4

    const/16 v4, 0x14

    new-array v4, v4, [F

    aput v52, v4, p1

    aput v53, v4, v35

    aput v53, v4, v27

    aput v53, v4, v37

    aput v22, v4, v38

    aput v53, v4, v39

    aput v52, v4, v40

    aput v53, v4, v41

    aput v53, v4, v42

    aput v22, v4, v43

    aput v53, v4, v44

    aput v53, v4, v45

    aput v52, v4, v46

    aput v53, v4, v47

    aput v22, v4, v48

    aput v53, v4, v33

    aput v53, v4, v49

    aput v53, v4, v50

    aput v52, v4, v51

    const/16 v27, 0x13

    aput v53, v4, v27

    invoke-virtual {v6, v4}, Landroid/graphics/ColorMatrix;->set([F)V

    new-instance v4, Landroid/graphics/ColorMatrix;

    invoke-direct {v4}, Landroid/graphics/ColorMatrix;-><init>()V

    invoke-virtual {v4, v6, v15}, Landroid/graphics/ColorMatrix;->setConcat(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v4}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v4

    const-string v6, "getArray(...)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Landroidx/compose/ui/graphics/ColorMatrixColorFilter;

    new-instance v15, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v15, v4}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    invoke-direct {v6, v15}, Landroidx/compose/ui/graphics/ColorFilter;-><init>(Landroid/graphics/ColorFilter;)V

    iput-object v4, v6, Landroidx/compose/ui/graphics/ColorMatrixColorFilter;->colorMatrix:[F

    iget-object v4, v14, Lc/I;->a:Landroid/graphics/Bitmap;

    iget-object v14, v5, Lc/X;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v14}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    invoke-static {v14, v13}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lc/s1;

    if-eqz v14, :cond_4

    invoke-virtual {v14}, Lc/s1;->b()Z

    move-result v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :cond_4
    move/from16 v14, p1

    :goto_2
    iget-object v15, v0, Le/m0$$ExternalSyntheticLambda5;->f$10:Landroidx/compose/runtime/MutableState;

    if-eqz v14, :cond_6

    :try_start_6
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-interface {v15}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v33, v5

    move-object/from16 v5, v27

    check-cast v5, Ljava/util/List;

    invoke-static {v5, v13}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/I;

    if-eqz v5, :cond_5

    iget-object v5, v5, Lc/I;->a:Landroid/graphics/Bitmap;

    move-object/from16 v35, v8

    new-instance v8, Landroid/graphics/RectF;

    move/from16 v27, v14

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v36, v15

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    int-to-float v15, v15

    move-object/from16 v37, v9

    move/from16 v9, v53

    :try_start_7
    invoke-direct {v8, v9, v9, v14, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v9, 0x0

    invoke-virtual {v0, v5, v9, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_9

    :cond_5
    :goto_3
    move-object/from16 v35, v8

    move-object/from16 v37, v9

    move/from16 v27, v14

    move-object/from16 v36, v15

    goto :goto_4

    :cond_6
    move-object/from16 v33, v5

    goto :goto_3

    :goto_4
    new-instance v0, Landroidx/compose/ui/graphics/AndroidImageBitmap;

    invoke-direct {v0, v4}, Landroidx/compose/ui/graphics/AndroidImageBitmap;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v4, 0x2e

    invoke-static {v7, v0, v6, v4}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawImage-gbVJVH8$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/AndroidImageBitmap;Landroidx/compose/ui/graphics/ColorMatrixColorFilter;I)V

    if-nez v27, :cond_7

    invoke-interface/range {v36 .. v36}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0, v13}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/I;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lc/I;->a:Landroid/graphics/Bitmap;

    new-instance v4, Landroidx/compose/ui/graphics/AndroidImageBitmap;

    invoke-direct {v4, v0}, Landroidx/compose/ui/graphics/AndroidImageBitmap;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v0, 0x3e

    const/4 v9, 0x0

    invoke-static {v7, v4, v9, v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawImage-gbVJVH8$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/AndroidImageBitmap;Landroidx/compose/ui/graphics/ColorMatrixColorFilter;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_7
    :goto_5
    :try_start_8
    invoke-virtual {v12}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    invoke-virtual {v12, v2, v3}, Landroidx/core/view/MenuHostHelper;->setSize-uvyYCjk(J)V

    :goto_6
    move-object/from16 v0, p0

    move/from16 v13, v23

    move-object/from16 v2, v29

    move-wide/from16 v3, v30

    move-object/from16 v5, v33

    move-object/from16 v6, v34

    move-object/from16 v8, v35

    move-object/from16 v9, v37

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    :goto_7
    move-object/from16 v2, v29

    move-wide/from16 v3, v30

    :goto_8
    move-object/from16 v1, v37

    goto/16 :goto_11

    :goto_9
    invoke-virtual {v12}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    invoke-virtual {v12, v2, v3}, Landroidx/core/view/MenuHostHelper;->setSize-uvyYCjk(J)V

    throw v0

    :catchall_3
    move-exception v0

    move-object/from16 v37, v9

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object/from16 v29, v2

    move-wide/from16 v30, v3

    move-object/from16 v37, v9

    goto :goto_8

    :cond_8
    move-object/from16 v29, v2

    move-wide/from16 v30, v3

    move-object/from16 v37, v9

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/16 v28, 0x0

    throw v28

    :cond_9
    move-object/from16 v29, v2

    move-wide/from16 v30, v3

    move-object/from16 v34, v6

    move-object/from16 v37, v9

    const/16 v27, 0x2

    iget-boolean v0, v1, Le/d0;->g:Z

    iget v2, v1, Le/d0;->l:F

    iget v1, v1, Le/d0;->j:F

    invoke-interface/range {v34 .. v34}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/Y;

    if-eqz v3, :cond_11

    iget-object v4, v3, Le/Y;->a:Lc/L;

    invoke-interface/range {v25 .. v25}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    const/16 v6, 0x168

    int-to-float v6, v6

    rem-float/2addr v5, v6

    const/high16 v6, 0x42340000    # 45.0f

    cmpg-float v6, v6, v5

    if-gtz v6, :cond_a

    const/high16 v6, 0x43070000    # 135.0f

    cmpg-float v6, v5, v6

    if-gtz v6, :cond_a

    goto :goto_a

    :cond_a
    const/high16 v6, 0x43610000    # 225.0f

    cmpg-float v6, v6, v5

    if-gtz v6, :cond_b

    const v6, 0x439d8000    # 315.0f

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_b

    :goto_a
    iget-object v3, v3, Le/Y;->b:Lc/L;

    goto :goto_b

    :cond_b
    move-object v3, v4

    :goto_b
    invoke-interface {v7}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/core/view/MenuHostHelper;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/core/view/MenuHostHelper;->getSize-NH-jbRc()J

    move-result-wide v8

    invoke-virtual {v5}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v6

    invoke-interface {v6}, Landroidx/compose/ui/graphics/Canvas;->save()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    iget-object v6, v5, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast v6, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    iget-object v12, v3, Lc/L;->a:Landroid/graphics/RectF;

    move/from16 v13, v27

    int-to-float v13, v13

    div-float v14, v17, v13

    div-float v15, v20, v13

    invoke-virtual {v6, v14, v15}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->translate(FF)V

    invoke-virtual {v3, v4}, Lc/L;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    if-eqz v0, :cond_f

    const-wide/16 v14, 0x0

    invoke-virtual {v6, v2, v2, v14, v15}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->scale-0AR0LA0(FFJ)V

    goto :goto_d

    :catchall_5
    move-exception v0

    goto :goto_f

    :cond_c
    const-wide/16 v14, 0x0

    if-eqz v26, :cond_d

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float v0, v17, v0

    invoke-virtual {v6, v0, v0, v14, v15}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->scale-0AR0LA0(FFJ)V

    goto :goto_c

    :cond_d
    if-eqz v0, :cond_e

    div-float/2addr v2, v1

    invoke-virtual {v6, v2, v2, v14, v15}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->scale-0AR0LA0(FFJ)V

    :cond_e
    :goto_c
    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-virtual {v6, v0, v14, v15}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->rotate-Uv8p0NA(FJ)V

    :cond_f
    :goto_d
    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v0

    neg-float v0, v0

    div-float/2addr v0, v13

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v1

    neg-float v1, v1

    div-float/2addr v1, v13

    invoke-virtual {v6, v0, v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->translate(FF)V

    invoke-interface {v7}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/core/view/MenuHostHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->getNativeCanvas(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, v3, Lc/L;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/c;

    invoke-virtual {v2, v0}, Lg/c;->a(Landroid/graphics/Canvas;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_e

    :cond_10
    :try_start_a
    invoke-virtual {v5}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    invoke-virtual {v5, v8, v9}, Landroidx/core/view/MenuHostHelper;->setSize-uvyYCjk(J)V

    goto :goto_10

    :goto_f
    invoke-virtual {v5}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    invoke-virtual {v5, v8, v9}, Landroidx/core/view/MenuHostHelper;->setSize-uvyYCjk(J)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :cond_11
    :goto_10
    :try_start_b
    invoke-virtual/range {v37 .. v37}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    move-object/from16 v1, v37

    invoke-virtual {v1, v10, v11}, Landroidx/core/view/MenuHostHelper;->setSize-uvyYCjk(J)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    invoke-virtual/range {v29 .. v29}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    move-object/from16 v2, v29

    move-wide/from16 v3, v30

    invoke-virtual {v2, v3, v4}, Landroidx/core/view/MenuHostHelper;->setSize-uvyYCjk(J)V

    return-object v16

    :catchall_6
    move-exception v0

    move-object/from16 v2, v29

    move-wide/from16 v3, v30

    goto :goto_12

    :catchall_7
    move-exception v0

    move-object v1, v9

    :goto_11
    :try_start_c
    invoke-virtual {v1}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v5

    invoke-interface {v5}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    invoke-virtual {v1, v10, v11}, Landroidx/core/view/MenuHostHelper;->setSize-uvyYCjk(J)V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    :catchall_8
    move-exception v0

    goto :goto_12

    :catchall_9
    move-exception v0

    move-wide v3, v10

    :goto_12
    invoke-virtual {v2}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    invoke-virtual {v2, v3, v4}, Landroidx/core/view/MenuHostHelper;->setSize-uvyYCjk(J)V

    throw v0
.end method

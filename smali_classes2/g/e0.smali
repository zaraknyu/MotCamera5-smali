.class public final Lg/e0;
.super Lg/b;
.source "SourceFile"


# static fields
.field public static final r:Ljava/lang/String;


# instance fields
.field public final l:F

.field public final m:Z

.field public final n:Z

.field public final o:Landroid/graphics/Matrix;

.field public final p:Landroid/graphics/RectF;

.field public final q:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lg/e0;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lg/e0;->r:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(FLandroid/graphics/PointF;Landroid/graphics/Matrix;ILandroidx/compose/runtime/ParcelableSnapshotMutableState;Landroidx/compose/runtime/ParcelableSnapshotMutableState;ZZLandroidx/compose/runtime/ParcelableSnapshotMutableState;Landroidx/compose/runtime/ParcelableSnapshotMutableState;)V
    .locals 0

    invoke-direct {p0, p3, p5, p6, p4}, Lg/b;-><init>(Landroid/graphics/Matrix;Landroidx/compose/runtime/ParcelableSnapshotMutableState;Landroidx/compose/runtime/MutableState;I)V

    iput p1, p0, Lg/e0;->l:F

    iput-boolean p7, p0, Lg/e0;->m:Z

    iput-boolean p8, p0, Lg/e0;->n:Z

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lg/e0;->o:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/RectF;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p2, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lg/e0;->p:Landroid/graphics/RectF;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lg/e0;->q:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Lc/x;Lc/v1;Landroid/graphics/Matrix;Ljava/lang/String;I)Lg/d;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const-string v3, "imageLayout"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "imagePerspective"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iget-object v4, v0, Lg/b;->a:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    iget-object v1, v1, Lc/x;->e:Landroid/graphics/Matrix;

    invoke-virtual {v3, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v3, v2, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-object/from16 v1, p2

    iget v1, v1, Lc/v1;->b:F

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    new-instance v1, Lg/d0;

    invoke-direct {v1}, Lg/d0;-><init>()V

    new-instance v4, Lg/t;

    invoke-direct {v4}, Lg/t;-><init>()V

    iget-object v1, v4, La/f;->a:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Path;

    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    sget-object v3, Lg/x;->c:Landroid/app/ActivityManager;

    invoke-static {}, La/z;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v3, v3

    const/high16 v5, 0x43200000    # 160.0f

    div-float/2addr v3, v5

    mul-float/2addr v3, v2

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v2, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v3, v0, Lg/e0;->q:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v12, 0x1

    iget-object v13, v4, Lg/t;->b:Ljava/lang/StringBuffer;

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Lg/r;

    iget-boolean v5, v14, Lg/r;->e:Z

    if-eqz v5, :cond_0

    iget-object v5, v14, Lg/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/s;

    iget-char v6, v5, Lg/s;->a:C

    iget-object v5, v5, Lg/s;->b:Ljava/util/ArrayList;

    const/16 v7, 0x43

    const/4 v8, 0x2

    iget-object v9, v0, Lg/e0;->o:Landroid/graphics/Matrix;

    const/4 v10, 0x0

    if-eq v6, v7, :cond_4

    const/16 v7, 0x5a

    if-eq v6, v7, :cond_3

    const/16 v7, 0x4c

    if-eq v6, v7, :cond_2

    const/16 v7, 0x4d

    if-eq v6, v7, :cond_1

    sget-object v5, Lg/e0;->r:Ljava/lang/String;

    const-string v6, "unknown path operator"

    invoke-static {v5, v6}, Lg/Z;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    new-array v7, v8, [F

    aput v6, v7, v10

    aput v5, v7, v12

    invoke-virtual {v2, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    invoke-virtual {v9, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    invoke-virtual {v11, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v5, v7, v10

    aget v6, v7, v12

    invoke-virtual {v4, v5, v6}, Lg/t;->moveTo(FF)V

    goto :goto_1

    :cond_2
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    new-array v7, v8, [F

    aput v6, v7, v10

    aput v5, v7, v12

    invoke-virtual {v2, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    invoke-virtual {v9, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    invoke-virtual {v11, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v5, v7, v10

    aget v6, v7, v12

    invoke-virtual {v4, v5, v6}, Lg/t;->lineTo(FF)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    const-string v5, "h\r\n"

    invoke-virtual {v13, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 p1, v10

    move-object/from16 v10, v16

    check-cast v10, Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 p2, v12

    move-object/from16 v12, v16

    check-cast v12, Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 p3, v3

    move-object/from16 v3, v16

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    move/from16 v16, v8

    const/4 v8, 0x6

    new-array v8, v8, [F

    aput v6, v8, p1

    aput v7, v8, p2

    aput v10, v8, v16

    const/4 v6, 0x3

    aput v12, v8, v6

    const/4 v7, 0x4

    aput v3, v8, v7

    const/4 v3, 0x5

    aput v5, v8, v3

    invoke-virtual {v2, v8}, Landroid/graphics/Matrix;->mapPoints([F)V

    invoke-virtual {v9, v8}, Landroid/graphics/Matrix;->mapPoints([F)V

    invoke-virtual {v11, v8}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v5, v8, p1

    move v9, v6

    aget v6, v8, p2

    aget v10, v8, v16

    aget v9, v8, v9

    aget v7, v8, v7

    aget v3, v8, v3

    move v8, v9

    move v9, v7

    move v7, v10

    move v10, v3

    invoke-virtual/range {v4 .. v10}, Lg/t;->cubicTo(FFFFFF)V

    move/from16 v12, p2

    move-object/from16 v3, p3

    goto/16 :goto_1

    :cond_5
    move-object/from16 p3, v3

    iget-object v3, v14, Lg/r;->b:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Lg/t;->a(Landroid/graphics/Paint;)V

    move-object/from16 v3, p3

    goto/16 :goto_0

    :cond_6
    move/from16 p2, v12

    iget v2, v0, Lg/e0;->l:F

    const/high16 v3, 0x42100000    # 36.0f

    div-float/2addr v3, v2

    invoke-virtual {v4}, Lg/t;->e()Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "toString(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    move/from16 v5, p2

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    neg-float v1, v3

    invoke-virtual {v4, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    sget-object v1, La/s;->f:La/k;

    iget v1, v4, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v5, v4, Landroid/graphics/RectF;->top:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget v6, v4, Landroid/graphics/RectF;->right:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget v7, v4, Landroid/graphics/RectF;->bottom:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    filled-new-array {v1, v5, v6, v7}, [Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v5, Lc/a$$ExternalSyntheticLambda0;

    const/16 v6, 0x10

    invoke-direct {v5, v6}, Lc/a$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v1, v5}, La/k;->a(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object v11

    iget-object v0, v0, Lg/b;->b:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v1, v5

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v5

    invoke-static {v1}, La/k;->a(F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6}, La/k;->a(F)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7}, La/k;->a(F)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v5

    add-int/lit8 v5, p5, 0x1

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    const-string v12, "unknown"

    move-object/from16 v10, p4

    filled-new-array/range {v7 .. v12}, [Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lg/b;->j:Ljava/lang/String;

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " RG\r\n"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " w 1 J 1 j\r\n/R0 gs\r\n"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, v4, Landroid/graphics/RectF;->left:F

    neg-float v3, v3

    invoke-static {v3}, La/k;->a(F)Ljava/lang/String;

    move-result-object v3

    iget v4, v4, Landroid/graphics/RectF;->top:F

    neg-float v4, v4

    invoke-static {v4}, La/k;->a(F)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v3, v4, v11, v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lg/b;->k:Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lg/d;

    invoke-direct {v1, v7, v0, v2}, Lg/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public final c()Z
    .locals 0

    iget-object p0, p0, Lg/e0;->q:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

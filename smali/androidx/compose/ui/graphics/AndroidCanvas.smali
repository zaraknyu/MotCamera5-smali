.class public final Landroidx/compose/ui/graphics/AndroidCanvas;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/graphics/Canvas;


# instance fields
.field public dstRect:Landroid/graphics/Rect;

.field public internalCanvas:Landroid/graphics/Canvas;

.field public srcRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->EmptyCanvas:Landroid/graphics/Canvas;

    iput-object v0, p0, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    return-void
.end method


# virtual methods
.method public final clipPath-mtrdD-E(Landroidx/compose/ui/graphics/Path;)V
    .locals 1

    iget-object p0, p0, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    instance-of v0, p1, Landroidx/compose/ui/graphics/AndroidPath;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/compose/ui/graphics/AndroidPath;

    iget-object p1, p1, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Unable to obtain android.graphics.Path"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final clipRect-N_I0leg(FFFFI)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    if-nez p5, :cond_0

    sget-object p5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    goto :goto_0

    :cond_0
    sget-object p5, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    :goto_0
    invoke-virtual/range {p0 .. p5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    return-void
.end method

.method public final concat-58bKbWc([F)V
    .locals 23

    move-object/from16 v0, p1

    invoke-static {v0}, Landroidx/compose/ui/graphics/Brush;->isIdentity-58bKbWc([F)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    const/4 v6, 0x2

    aget v7, v0, v6

    const/4 v8, 0x3

    aget v9, v0, v8

    const/4 v10, 0x4

    aget v11, v0, v10

    const/4 v12, 0x5

    aget v13, v0, v12

    const/4 v14, 0x6

    aget v15, v0, v14

    const/16 v16, 0x7

    aget v17, v0, v16

    const/16 v18, 0x8

    aget v19, v0, v18

    const/16 v20, 0xc

    aget v20, v0, v20

    const/16 v21, 0xd

    aget v21, v0, v21

    const/16 v22, 0xf

    aget v22, v0, v22

    aput v3, v0, v2

    aput v11, v0, v4

    aput v20, v0, v6

    aput v5, v0, v8

    aput v13, v0, v10

    aput v21, v0, v12

    aput v9, v0, v14

    aput v17, v0, v16

    aput v22, v0, v18

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->setValues([F)V

    aput v3, v0, v2

    aput v5, v0, v4

    aput v7, v0, v6

    aput v9, v0, v8

    aput v11, v0, v10

    aput v13, v0, v12

    aput v15, v0, v14

    aput v17, v0, v16

    aput v19, v0, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method

.method public final disableZ()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Landroid/graphics/Canvas;->disableZ()V

    return-void
.end method

.method public final drawArc(FFFFFFLandroidx/compose/ui/graphics/AndroidPaint;)V
    .locals 9

    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    move-object/from16 p0, p7

    iget-object p0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Ljava/lang/Object;

    move-object v8, p0

    check-cast v8, Landroid/graphics/Paint;

    const/4 v7, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public final drawCircle-9KIMszo(FJLandroidx/compose/ui/graphics/AndroidPaint;)V
    .locals 3

    iget-object p0, p0, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    const/16 v0, 0x20

    shr-long v0, p2, v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    const-wide v1, 0xffffffffL

    and-long/2addr p2, v1

    long-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    iget-object p3, p4, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Ljava/lang/Object;

    check-cast p3, Landroid/graphics/Paint;

    invoke-virtual {p0, v0, p2, p1, p3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final drawImage-d-4ec7I(Landroidx/compose/ui/graphics/AndroidImageBitmap;Landroidx/compose/ui/graphics/AndroidPaint;)V
    .locals 3

    iget-object p0, p0, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    invoke-static {p1}, Landroidx/compose/ui/graphics/Brush;->asAndroidBitmap(Landroidx/compose/ui/graphics/AndroidImageBitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    const-wide/16 v0, 0x0

    long-to-int v2, v0

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iget-object p2, p2, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Ljava/lang/Object;

    check-cast p2, Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v2, v0, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final drawImageRect-HPBpro0(Landroidx/compose/ui/graphics/AndroidImageBitmap;JJJLandroidx/compose/ui/graphics/AndroidPaint;)V
    .locals 8

    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidCanvas;->srcRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/graphics/AndroidCanvas;->srcRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/graphics/AndroidCanvas;->dstRect:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    invoke-static {p1}, Landroidx/compose/ui/graphics/Brush;->asAndroidBitmap(Landroidx/compose/ui/graphics/AndroidImageBitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v1, p0, Landroidx/compose/ui/graphics/AndroidCanvas;->srcRect:Landroid/graphics/Rect;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v2, 0x20

    shr-long v3, p2, v2

    long-to-int v3, v3

    iput v3, v1, Landroid/graphics/Rect;->left:I

    const-wide v4, 0xffffffffL

    and-long/2addr p2, v4

    long-to-int p2, p2

    iput p2, v1, Landroid/graphics/Rect;->top:I

    shr-long v6, p4, v2

    long-to-int p3, v6

    add-int/2addr v3, p3

    iput v3, v1, Landroid/graphics/Rect;->right:I

    and-long v6, p4, v4

    long-to-int p3, v6

    add-int/2addr p2, p3

    iput p2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object p0, p0, Landroidx/compose/ui/graphics/AndroidCanvas;->dstRect:Landroid/graphics/Rect;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-wide/16 p2, 0x0

    long-to-int v3, p2

    iput v3, p0, Landroid/graphics/Rect;->left:I

    long-to-int p2, p2

    iput p2, p0, Landroid/graphics/Rect;->top:I

    shr-long v6, p6, v2

    long-to-int p3, v6

    add-int/2addr v3, p3

    iput v3, p0, Landroid/graphics/Rect;->right:I

    and-long v2, p6, v4

    long-to-int p3, v2

    add-int/2addr p2, p3

    iput p2, p0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 p2, p8

    iget-object p2, p2, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Ljava/lang/Object;

    check-cast p2, Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1, p0, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final drawLine-Wko1d7g(JJLandroidx/compose/ui/graphics/AndroidPaint;)V
    .locals 6

    iget-object p0, p0, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    const/16 v0, 0x20

    shr-long v1, p1, v0

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    const-wide v2, 0xffffffffL

    and-long/2addr p1, v2

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    shr-long v4, p3, v0

    long-to-int p1, v4

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    and-long/2addr p3, v2

    long-to-int p3, p3

    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p4

    iget-object p3, p5, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Ljava/lang/Object;

    move-object p5, p3

    check-cast p5, Landroid/graphics/Paint;

    move p3, p1

    move p1, v1

    invoke-virtual/range {p0 .. p5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final drawPath(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/AndroidPaint;)V
    .locals 1

    iget-object p0, p0, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    instance-of v0, p1, Landroidx/compose/ui/graphics/AndroidPath;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/compose/ui/graphics/AndroidPath;

    iget-object p1, p1, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    iget-object p2, p2, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Ljava/lang/Object;

    check-cast p2, Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Unable to obtain android.graphics.Path"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final drawRect(FFFFLandroidx/compose/ui/graphics/AndroidPaint;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    iget-object p5, p5, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Ljava/lang/Object;

    check-cast p5, Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final drawRoundRect(FFFFFFLandroidx/compose/ui/graphics/AndroidPaint;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    iget-object p7, p7, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Ljava/lang/Object;

    check-cast p7, Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final enableZ()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Landroid/graphics/Canvas;->enableZ()V

    return-void
.end method

.method public final restore()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final rotate(F)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->rotate(F)V

    return-void
.end method

.method public final save()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    return-void
.end method

.method public final saveLayer(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/graphics/AndroidPaint;)V
    .locals 7

    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    iget v1, p1, Landroidx/compose/ui/geometry/Rect;->left:F

    iget v2, p1, Landroidx/compose/ui/geometry/Rect;->top:F

    iget v3, p1, Landroidx/compose/ui/geometry/Rect;->right:F

    iget v4, p1, Landroidx/compose/ui/geometry/Rect;->bottom:F

    iget-object p0, p2, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Landroid/graphics/Paint;

    const/16 v6, 0x1f

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    return-void
.end method

.method public final scale(FF)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->scale(FF)V

    return-void
.end method

.method public final translate(FF)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

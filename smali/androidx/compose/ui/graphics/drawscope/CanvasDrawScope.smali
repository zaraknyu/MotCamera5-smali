.class public final Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/graphics/drawscope/DrawScope;


# instance fields
.field public final drawContext:Landroidx/core/view/MenuHostHelper;

.field public final drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

.field public fillPaint:Landroidx/compose/ui/graphics/AndroidPaint;

.field public strokePaint:Landroidx/compose/ui/graphics/AndroidPaint;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    sget-object v1, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v2, Landroidx/compose/ui/graphics/drawscope/DrawStyle;->DefaultDensity:Landroidx/compose/ui/unit/DensityImpl;

    iput-object v2, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->density:Landroidx/compose/ui/unit/Density;

    iput-object v1, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    sget-object v1, Landroidx/compose/ui/graphics/drawscope/EmptyCanvas;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/EmptyCanvas;

    iput-object v1, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->canvas:Landroidx/compose/ui/graphics/Canvas;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->size:J

    iput-object v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    new-instance v0, Landroidx/core/view/MenuHostHelper;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    new-instance v1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    invoke-direct {v1, v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;-><init>(Landroidx/core/view/MenuHostHelper;)V

    iput-object v1, v0, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    return-void
.end method

.method public static configurePaint-2qPWKa0$default(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;JLandroidx/compose/ui/graphics/drawscope/DrawStyle;FI)Landroidx/compose/ui/graphics/AndroidPaint;
    .locals 0

    invoke-virtual {p0, p3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->selectPaint(Landroidx/compose/ui/graphics/drawscope/DrawStyle;)Landroidx/compose/ui/graphics/AndroidPaint;

    move-result-object p0

    const/high16 p3, 0x3f800000    # 1.0f

    cmpg-float p3, p4, p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/Color;->getAlpha-impl(J)F

    move-result p3

    mul-float/2addr p3, p4

    invoke-static {p3, p1, p2}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide p1

    :goto_0
    iget-object p3, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Ljava/lang/Object;

    check-cast p3, Landroid/graphics/Paint;

    invoke-virtual {p3}, Landroid/graphics/Paint;->getColor()I

    move-result p3

    invoke-static {p3}, Landroidx/compose/ui/graphics/Brush;->Color(I)J

    move-result-wide p3

    invoke-static {p3, p4, p1, p2}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/graphics/AndroidPaint;->setColor-8_81llA(J)V

    :cond_1
    iget-object p1, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalShader:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Shader;

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0, p2}, Landroidx/compose/ui/graphics/AndroidPaint;->setShader(Landroid/graphics/Shader;)V

    :cond_2
    iget-object p1, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalColorFilter:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/ui/graphics/ColorFilter;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0, p2}, Landroidx/compose/ui/graphics/AndroidPaint;->setColorFilter(Landroidx/compose/ui/graphics/ColorFilter;)V

    :cond_3
    iget p1, p0, Landroidx/compose/ui/graphics/AndroidPaint;->_blendMode:I

    if-ne p1, p5, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p5}, Landroidx/compose/ui/graphics/AndroidPaint;->setBlendMode-s9anfk8(I)V

    :goto_1
    iget-object p1, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->isFilterBitmap()Z

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_5

    return-object p0

    :cond_5
    iget-object p1, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-object p0
.end method


# virtual methods
.method public final configurePaint-swdJneE(Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;II)Landroidx/compose/ui/graphics/AndroidPaint;
    .locals 2

    invoke-virtual {p0, p2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->selectPaint(Landroidx/compose/ui/graphics/drawscope/DrawStyle;)Landroidx/compose/ui/graphics/AndroidPaint;

    move-result-object p2

    if-eqz p1, :cond_0

    invoke-interface {p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v0

    invoke-virtual {p1, p3, v0, v1, p2}, Landroidx/compose/ui/graphics/Brush;->applyTo-Pq9zytI(FJLandroidx/compose/ui/graphics/AndroidPaint;)V

    goto :goto_0

    :cond_0
    iget-object p0, p2, Landroidx/compose/ui/graphics/AndroidPaint;->internalShader:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Shader;

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Landroidx/compose/ui/graphics/AndroidPaint;->setShader(Landroid/graphics/Shader;)V

    :cond_1
    iget-object p0, p2, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getColor()I

    move-result p0

    invoke-static {p0}, Landroidx/compose/ui/graphics/Brush;->Color(I)J

    move-result-wide p0

    sget-wide v0, Landroidx/compose/ui/graphics/Color;->Black:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {p2, v0, v1}, Landroidx/compose/ui/graphics/AndroidPaint;->setColor-8_81llA(J)V

    :cond_2
    iget-object p0, p2, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

    move-result p0

    int-to-float p0, p0

    const/high16 p1, 0x437f0000    # 255.0f

    div-float/2addr p0, p1

    cmpg-float p0, p0, p3

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p2, p3}, Landroidx/compose/ui/graphics/AndroidPaint;->setAlpha(F)V

    :goto_0
    iget-object p0, p2, Landroidx/compose/ui/graphics/AndroidPaint;->internalColorFilter:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/graphics/ColorFilter;

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {p2, p4}, Landroidx/compose/ui/graphics/AndroidPaint;->setColorFilter(Landroidx/compose/ui/graphics/ColorFilter;)V

    :cond_4
    iget p0, p2, Landroidx/compose/ui/graphics/AndroidPaint;->_blendMode:I

    if-ne p0, p5, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p2, p5}, Landroidx/compose/ui/graphics/AndroidPaint;->setBlendMode-s9anfk8(I)V

    :goto_1
    iget-object p0, p2, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->isFilterBitmap()Z

    move-result p0

    if-ne p0, p6, :cond_6

    return-object p2

    :cond_6
    iget-object p0, p2, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Paint;

    const/4 p1, 0x1

    if-nez p6, :cond_7

    move p3, p1

    goto :goto_2

    :cond_7
    const/4 p3, 0x0

    :goto_2
    xor-int/2addr p1, p3

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-object p2
.end method

.method public final drawArc-yD3GUKo(JFFJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;)V
    .locals 11

    iget-object v1, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    iget-object v6, v1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->canvas:Landroidx/compose/ui/graphics/Canvas;

    const/16 v1, 0x20

    shr-long v2, p5, v1

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    const-wide v3, 0xffffffffL

    and-long v8, p5, v3

    long-to-int v5, v8

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    shr-long v9, p7, v1

    long-to-int v1, v9

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    add-float v9, v1, v2

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    and-long v2, p7, v3

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    add-float v10, v2, v1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x3

    move-object v0, p0

    move-wide v1, p1

    move-object/from16 v3, p9

    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->configurePaint-2qPWKa0$default(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;JLandroidx/compose/ui/graphics/drawscope/DrawStyle;FI)Landroidx/compose/ui/graphics/AndroidPaint;

    move-result-object v0

    move-object v2, v6

    move v3, v7

    move v4, v8

    move v5, v9

    move v6, v10

    move v7, p3

    move v8, p4

    move-object v9, v0

    invoke-interface/range {v2 .. v9}, Landroidx/compose/ui/graphics/Canvas;->drawArc(FFFFFFLandroidx/compose/ui/graphics/AndroidPaint;)V

    return-void
.end method

.method public final drawCircle-VaOC9Bg(JFJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;)V
    .locals 7

    iget-object v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    iget-object v0, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->canvas:Landroidx/compose/ui/graphics/Canvas;

    const/4 v6, 0x3

    move-object v1, p0

    move-wide v2, p1

    move v5, p6

    move-object v4, p7

    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->configurePaint-2qPWKa0$default(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;JLandroidx/compose/ui/graphics/drawscope/DrawStyle;FI)Landroidx/compose/ui/graphics/AndroidPaint;

    move-result-object p0

    invoke-interface {v0, p3, p4, p5, p0}, Landroidx/compose/ui/graphics/Canvas;->drawCircle-9KIMszo(FJLandroidx/compose/ui/graphics/AndroidPaint;)V

    return-void
.end method

.method public final drawImage-AZ2fEMs(Landroidx/compose/ui/graphics/AndroidImageBitmap;JJJFLandroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 10

    iget-object v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    iget-object v1, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->canvas:Landroidx/compose/ui/graphics/Canvas;

    const/4 v3, 0x0

    sget-object v4, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    const/4 v7, 0x3

    move-object v2, p0

    move/from16 v5, p8

    move-object/from16 v6, p9

    move/from16 v8, p10

    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->configurePaint-swdJneE(Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;II)Landroidx/compose/ui/graphics/AndroidPaint;

    move-result-object v9

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-wide/from16 v7, p6

    invoke-interface/range {v1 .. v9}, Landroidx/compose/ui/graphics/Canvas;->drawImageRect-HPBpro0(Landroidx/compose/ui/graphics/AndroidImageBitmap;JJJLandroidx/compose/ui/graphics/AndroidPaint;)V

    return-void
.end method

.method public final drawImage-gbVJVH8(Landroidx/compose/ui/graphics/AndroidImageBitmap;Landroidx/compose/ui/graphics/ColorFilter;)V
    .locals 8

    iget-object v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    iget-object v0, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->canvas:Landroidx/compose/ui/graphics/Canvas;

    const/4 v2, 0x0

    const/4 v7, 0x1

    sget-object v3, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x3

    move-object v1, p0

    move-object v5, p2

    invoke-virtual/range {v1 .. v7}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->configurePaint-swdJneE(Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;II)Landroidx/compose/ui/graphics/AndroidPaint;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Landroidx/compose/ui/graphics/Canvas;->drawImage-d-4ec7I(Landroidx/compose/ui/graphics/AndroidImageBitmap;Landroidx/compose/ui/graphics/AndroidPaint;)V

    return-void
.end method

.method public final drawLine-NGM6Ib0(FJJJ)V
    .locals 5

    iget-object v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    iget-object v0, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->canvas:Landroidx/compose/ui/graphics/Canvas;

    iget-object v1, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->strokePaint:Landroidx/compose/ui/graphics/AndroidPaint;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-static {}, Landroidx/compose/ui/graphics/Brush;->Paint()Landroidx/compose/ui/graphics/AndroidPaint;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/compose/ui/graphics/AndroidPaint;->setStyle-k9PVt8s(I)V

    iput-object v1, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->strokePaint:Landroidx/compose/ui/graphics/AndroidPaint;

    :cond_0
    iget-object p0, v1, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-static {v3}, Landroidx/compose/ui/graphics/Brush;->Color(I)J

    move-result-wide v3

    invoke-static {v3, v4, p2, p3}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, p2, p3}, Landroidx/compose/ui/graphics/AndroidPaint;->setColor-8_81llA(J)V

    :cond_1
    iget-object p2, v1, Landroidx/compose/ui/graphics/AndroidPaint;->internalShader:Ljava/lang/Object;

    check-cast p2, Landroid/graphics/Shader;

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {v1, p3}, Landroidx/compose/ui/graphics/AndroidPaint;->setShader(Landroid/graphics/Shader;)V

    :cond_2
    iget-object p2, v1, Landroidx/compose/ui/graphics/AndroidPaint;->internalColorFilter:Ljava/lang/Object;

    check-cast p2, Landroidx/compose/ui/graphics/ColorFilter;

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {v1, p3}, Landroidx/compose/ui/graphics/AndroidPaint;->setColorFilter(Landroidx/compose/ui/graphics/ColorFilter;)V

    :cond_3
    iget p2, v1, Landroidx/compose/ui/graphics/AndroidPaint;->_blendMode:I

    const/4 p3, 0x3

    if-ne p2, p3, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v1, p3}, Landroidx/compose/ui/graphics/AndroidPaint;->setBlendMode-s9anfk8(I)V

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p2

    cmpg-float p2, p2, p1

    if-nez p2, :cond_5

    goto :goto_1

    :cond_5
    iget-object p2, v1, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Ljava/lang/Object;

    check-cast p2, Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :goto_1
    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeMiter()F

    move-result p1

    const/high16 p2, 0x40800000    # 4.0f

    cmpg-float p1, p1, p2

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    iget-object p1, v1, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    :goto_2
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/AndroidPaint;->getStrokeCap-KaPHkGw()I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v1, p2}, Landroidx/compose/ui/graphics/AndroidPaint;->setStrokeCap-BeK7IIE(I)V

    :goto_3
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/AndroidPaint;->getStrokeJoin-LxFBmk8()I

    move-result p1

    if-nez p1, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v1, p2}, Landroidx/compose/ui/graphics/AndroidPaint;->setStrokeJoin-Ww9F2mQ(I)V

    :goto_4
    invoke-virtual {p0}, Landroid/graphics/Paint;->isFilterBitmap()Z

    move-result p0

    if-ne p0, v2, :cond_9

    :goto_5
    move-wide p1, p4

    move-wide p3, p6

    move-object p0, v0

    move-object p5, v1

    goto :goto_6

    :cond_9
    iget-object p0, v1, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Paint;

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    goto :goto_5

    :goto_6
    invoke-interface/range {p0 .. p5}, Landroidx/compose/ui/graphics/Canvas;->drawLine-Wko1d7g(JJLandroidx/compose/ui/graphics/AndroidPaint;)V

    return-void
.end method

.method public final drawPath-GBMwjPU(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V
    .locals 8

    iget-object v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    iget-object v0, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->canvas:Landroidx/compose/ui/graphics/Canvas;

    const/4 v7, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p2

    move v4, p3

    move-object v3, p4

    move v6, p5

    invoke-virtual/range {v1 .. v7}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->configurePaint-swdJneE(Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;II)Landroidx/compose/ui/graphics/AndroidPaint;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Landroidx/compose/ui/graphics/Canvas;->drawPath(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/AndroidPaint;)V

    return-void
.end method

.method public final drawRect-n-J9OG0(JJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V
    .locals 10

    iget-object v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    iget-object v0, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->canvas:Landroidx/compose/ui/graphics/Canvas;

    const/16 v1, 0x20

    shr-long v2, p3, v1

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    const-wide v4, 0xffffffffL

    and-long/2addr p3, v4

    long-to-int p3, p3

    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p4

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    shr-long v6, p5, v1

    long-to-int v1, v6

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    add-float/2addr v1, v2

    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p3

    and-long/2addr v4, p5

    long-to-int v2, v4

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    add-float/2addr v2, p3

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v4, p0

    move-wide v5, p1

    move-object/from16 v7, p7

    move/from16 v9, p8

    invoke-static/range {v4 .. v9}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->configurePaint-2qPWKa0$default(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;JLandroidx/compose/ui/graphics/drawscope/DrawStyle;FI)Landroidx/compose/ui/graphics/AndroidPaint;

    move-result-object p0

    move-object p5, p0

    move p2, p4

    move-object p0, v0

    move p3, v1

    move p4, v2

    move p1, v3

    invoke-interface/range {p0 .. p5}, Landroidx/compose/ui/graphics/Canvas;->drawRect(FFFFLandroidx/compose/ui/graphics/AndroidPaint;)V

    return-void
.end method

.method public final getDensity()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->density:Landroidx/compose/ui/unit/Density;

    invoke-interface {p0}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result p0

    return p0
.end method

.method public final getDrawContext()Landroidx/core/view/MenuHostHelper;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    return-object p0
.end method

.method public final getFontScale()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->density:Landroidx/compose/ui/unit/Density;

    invoke-interface {p0}, Landroidx/compose/ui/unit/Density;->getFontScale()F

    move-result p0

    return p0
.end method

.method public final getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    return-object p0
.end method

.method public final selectPaint(Landroidx/compose/ui/graphics/drawscope/DrawStyle;)Landroidx/compose/ui/graphics/AndroidPaint;
    .locals 3

    sget-object v0, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->fillPaint:Landroidx/compose/ui/graphics/AndroidPaint;

    if-nez p1, :cond_0

    invoke-static {}, Landroidx/compose/ui/graphics/Brush;->Paint()Landroidx/compose/ui/graphics/AndroidPaint;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/compose/ui/graphics/AndroidPaint;->setStyle-k9PVt8s(I)V

    iput-object p1, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->fillPaint:Landroidx/compose/ui/graphics/AndroidPaint;

    :cond_0
    return-object p1

    :cond_1
    instance-of v0, p1, Landroidx/compose/ui/graphics/drawscope/Stroke;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->strokePaint:Landroidx/compose/ui/graphics/AndroidPaint;

    if-nez v0, :cond_2

    invoke-static {}, Landroidx/compose/ui/graphics/Brush;->Paint()Landroidx/compose/ui/graphics/AndroidPaint;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/AndroidPaint;->setStyle-k9PVt8s(I)V

    iput-object v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->strokePaint:Landroidx/compose/ui/graphics/AndroidPaint;

    :cond_2
    iget-object p0, v0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    check-cast p1, Landroidx/compose/ui/graphics/drawscope/Stroke;

    iget v2, p1, Landroidx/compose/ui/graphics/drawscope/Stroke;->width:F

    cmpg-float v1, v1, v2

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, v0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :goto_0
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/AndroidPaint;->getStrokeCap-KaPHkGw()I

    move-result v1

    iget v2, p1, Landroidx/compose/ui/graphics/drawscope/Stroke;->cap:I

    if-ne v1, v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/AndroidPaint;->setStrokeCap-BeK7IIE(I)V

    :goto_1
    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeMiter()F

    move-result p0

    iget v1, p1, Landroidx/compose/ui/graphics/drawscope/Stroke;->miter:F

    cmpg-float p0, p0, v1

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    iget-object p0, v0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Paint;

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    :goto_2
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/AndroidPaint;->getStrokeJoin-LxFBmk8()I

    move-result p0

    iget p1, p1, Landroidx/compose/ui/graphics/drawscope/Stroke;->join:I

    if-ne p0, p1, :cond_6

    return-object v0

    :cond_6
    invoke-virtual {v0, p1}, Landroidx/compose/ui/graphics/AndroidPaint;->setStrokeJoin-Ww9F2mQ(I)V

    return-object v0

    :cond_7
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method
